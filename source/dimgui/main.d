module dimgui.dimgui;
import std.json;
import dimgui.test;
import std.string;
import std.stdio;
import std.algorithm: canFind;
import std.array;
import std.conv : to;
import std.algorithm.iteration;


string nl(alias T = 1)(string v) {
    return v ~ "\n".replicate(T);
}

class function_decl {
    import std.conv : to;
    string return_type;
    string name;
    string args;
    string type_name;

    this(string return_type, string name, string args) {
        this.return_type = return_type;
        this.name = name;
        this.args = args;
    }

    void set_type_name(string type_name) {
        this.type_name = type_name;
    }

    string to_named_string() {
        return "%s %s(%s)".format(return_type, name, args);

    }

    string to_type_string() {
        return "%s function(%s)".format(return_type, args);

    }
}

string parse_json_value_to_str(JSONValue v) {
    import std.conv;
    string result;
    if (v.type == JSONType.integer) {
        result = to!string(v.integer);
    } else if (v.type == JSONType.true_ || v.type == JSONType.false_) {
        result = to!string(v.boolean);
    } else if (v.type == JSONType.string) {
        result = v.str;
    }
    return result;
}

string parse_json_value(alias T)(JSONValue v) {
    return parse_json_value_to_str(v[T]);
}

string get_return_type(JSONValue element) {
    string return_type;
    if ("constructor" in element) {
        return_type = "%s*".format(parse_json_value!"stname"(element));
    } else {
        return_type = parse_json_value!"ret"(element);
    }
    return remove_const(return_type);
}

string remove_const(string v) {
    import std.regex;
    auto const_regex = regex(r"\s?const(\s|\[|\*)", "g");
    auto const_with_spaces_regex = regex(r"\s?const\s?", "g");

    string result = v;
    if (v.match(const_regex)) {
        result = v.replaceAll(const_with_spaces_regex, "");
    }
    return result;
}

unittest {
    void test(string v, string expected) {
        auto r = remove_const(v);
        assert(r.indexOf("const") == -1);
        assert(r == expected);
    }
    
    test("int", "int");
    test("const int", "int");
    test("int const ", "int");
    test("int const*", "int*");
    test("int const* ", "int* ");
    test("const int const*", "int*");
}

string wrap_extern_c(string v) {
    return nl("extern(C) @nogc nothrow {") ~ v ~ "}";
}

string to_lines(T)(T[] values) {
    string result;
    foreach (v; values) {
        result ~= nl("%s;".format(v));
    }
    return result;
}

string parse_ref(string v) {
    const auto contains_ref_op = v.indexOf("&") != -1;
    if (contains_ref_op) {
        v = v.replace("&", "");
        v = "ref %s".format(v);
    }
    return v;
}

unittest {
    void test(string v, string e) {
        auto result = parse_ref(v);
        assert(result == e);
    }

    test("SomeVal", "SomeVal");
    test("SomeVal&", "ref SomeVal");
    test("&SomeVal", "ref SomeVal");
}

string parse_type(string arg_type) {
    const auto no_const = remove_const(arg_type);
    string result = no_const;
    switch (result) {
        case "int64_t":
        case "signed int":
        case "long":
            result = "int"; break;
        case "uint64_t":
        case "unsigned int":
        case "unsigned long":
            result = "uint"; break;
        case "unsigned int*": result = "uint*"; break;
        case "signed char": result = "byte"; break;
        case "unsigned char": result = "ubyte"; break;
        case "unsigned char*": result = "ubyte*"; break;
        case "unsigned char**": result = "ubyte**"; break;
        case "signed short": result = "short"; break;
        case "unsigned short": result = "ushort"; break;
        case "wchar_t": result = "wchar"; break;
        case "long long": result = "long"; break;
        case "unsigned long long": result = "ulong"; break;
        case "...": result = "va_list"; break;
        default: break;
    }
    result = parse_ref(result);
    return result;
}

unittest {
    void test(string v, string expected) {
        auto t = parse_type(v);
        assert(t == expected);
    }

    test("signed char", "byte");
    test("unsigned short", "ushort");
}

string parse_name(string arg_name) {
    string result = arg_name;
    switch (arg_name) {
        case "out": result = "out_"; break;
        case "in": result = "in_"; break;
        case "ref": result = "ref_"; break;
        case "...": result = "args"; break;
        default: break;
    }
    return result;
}

struct arg {
    string type;
    string name;

    string toString() {
        return "%s %s".format(type, name);
    }
}

string parse_func(string ret, string args_str, string name) {
    import std.algorithm.iteration;
    import std.array;
    
    auto parsed_args = args_str
        .strip("(").strip(")")
        .split(",")
        .map!(s => s.strip())
        .map!(s => s.split(" "))
        .map!(s => arg(s[0], s[1]));

    string[] formatted_args;
    foreach (a; parsed_args) {
        formatted_args ~= a.toString;
    }

    auto result = "%s %s(".format(parse_type(ret), name);
    foreach (i, f; formatted_args) {
        result ~= f;
        result ~= (i != formatted_args.length - 1) ? ", " : "";
    }
    result ~= ")";
    return result;
}

string parse_args(JSONValue element) {
    import std.string;
    string[] args;
    foreach (k, e; element.array) {
        auto name = parse_json_value!"name"(e);
        if ("ret" in e) {
            // function argument
            args  ~= "%s %s".format(parse_func(
                    parse_json_value!"ret"(e),
                    parse_json_value!"signature"(e),
                    "function"
                ), name);
        } else {
            // standard argument
            auto type = parse_json_value!"type"(e);
            args ~= arg(remove_const(parse_type(type)), parse_name(name)).toString;
        }
    }

    string result;
    foreach (i, a; args) {
       result ~= a;
       result ~= (i != args.length - 1) ? ", " : "";
    }
    return result;
}

function_decl[] parse_definitions(string text) {
    auto j = parseJSON(text);

    string result;
    string[] cimgui_names;
    string[] type_aliases;
    function_decl[] function_decls;
    foreach (k, values; j.object) {
        int count;
        foreach (k2, v; values.array) {
            const auto name = parse_json_value!"ov_cimguiname"(v);
            const auto args = parse_args(v["argsT"]);
            const auto return_type = get_return_type(v);

            auto is_excluded = (string t) => name.canFind(t) || args.canFind(t) || return_type.canFind(t);
            if (
                is_excluded("SDL") ||
                is_excluded("OpenGL2") ||
                is_excluded("ImVector") ||
                is_excluded("ImVec2_Simple") ||
                is_excluded("ImVec4_Simple") ||
                is_excluded("ImColor_Simple")) continue;

            auto function_decl = new function_decl(return_type, name, parse_args(v["argsT"]));
            function_decl.set_type_name("%s_t%s".format(name, count.to!string));
            function_decls ~= function_decl;
            count++;
        }
    }

    return function_decls;
}

string format_function_decls_alias_str(function_decl[] function_decls) {
    string result;
    string type_aliases;
    foreach (f; function_decls) {
        type_aliases ~= nl("alias %s = %s;".format(f.type_name, f.to_type_string));
    }
    result ~= wrap_extern_c(type_aliases);
    return result;
}

string format_function_decls_str(function_decl[] function_decls) {
    string result;
    string function_declarations;
    foreach (f; function_decls) {
        function_declarations ~= nl("%s %s;".format(f.type_name, f.name));
    }
    result ~= nl("__gshared {");
    result ~= function_declarations;
    result ~= "}";
    return result;
}

string format_enum_value(JSONValue value) {
    string result = parse_json_value!"name"(value);
    if ("value" in value) {
        result ~= " = " ~ parse_json_value!"value"(value);
    }
    return result; 
}

string parse_enums(JSONValue enums) {
    string result;
    foreach (enum_name, enum_values; enums.object) {
        string enum_result = nl("enum {");
        foreach (k, v; enum_values.array) {
            enum_result ~= nl("    %s,".format(format_enum_value(v)));
        }
        enum_result ~= nl("}");
        result ~= nl(enum_result);
    }
    return result;
}

string maybe_get_array_bounds_from_name(string name) {
    auto index1 = name.indexOf("[");
    if (index1 == -1) return "";

    auto index2 = name.indexOf("]");
    auto bounds = name[index1 .. index2 + 1];
    return bounds;
}

unittest {
    void test(string v, string expected, int line = __LINE__) {
        auto result = maybe_get_array_bounds_from_name(v);
        areEqual(expected, result, "", __FILE__, line);
    }

    test("test[1]", "[1]");
    test("test[]", "[]");
    test("test", "");
}

string remove_array_bounds(string name) {
    auto index1 = name.indexOf("[");
    if (index1 == -1) return name;

    auto bounds = name[0 .. index1];
    return bounds;
}

unittest {
    void test(string v, string expected) {
        auto result = remove_array_bounds(v);
        assert(result == expected);
    }
    test("test[1]", "test");
    test("test[]", "test");
    test("test", "test");

}

string get_struct_member_function_return_type(string v) {
    auto index1 = v.indexOf("(");
    return remove_const(v[0 .. index1]);
}

unittest {
    auto result = get_struct_member_function_return_type("void(*)(int abc)");
    assert(result == "void");
}

string get_struct_member_function_args(string v) {
    auto index1 = v.indexOf(")");
    auto params = v[index1 + 1 .. $];
    return remove_const(params);
}

unittest {
    auto result = get_struct_member_function_args("void(*)(int a)");
    areEqual("(int a)", result);

    result = get_struct_member_function_args("void(*)(int a, char c)");
    areEqual("(int a, char c)", result);
}

bool is_function_def(string v) {
    //todo: make this more robust. right now it is very dumb
    return v.indexOf("(") != -1;
}

bool is_struct(string v) {
    return v.indexOf("struct") != -1;
}

unittest {
    isTrue(is_struct("struct val"));
    isFalse(is_struct("val"));
}

string format_struct_value(string type, string name) {
    if (is_function_def(type)) {
        auto no_const = remove_const(type);
        auto ret = get_struct_member_function_return_type(no_const);
        auto args = get_struct_member_function_args(no_const);
        string func = parse_func(ret, args, name);
        return func;
    }

    type = type ~ maybe_get_array_bounds_from_name(name);
    return parse_type(type) ~ " " ~ remove_array_bounds(name);
}

unittest {
    void test(JSONValue v, string expected, int line = __LINE__) {
        auto result = format_struct_value(v);
        areEqual(expected, result, "", __FILE__, line);
    }
    JSONValue make(string type, string name) {
        JSONValue v;
        v["type"] = type;
        v["name"] = name;
        return v;
    }

    auto v = make("short", "test");
    test(v, "short test");

    v = make("unsigned short", "test");
    test(v, "ushort test");
}

string parse_structs(JSONValue structs, string[] defs_to_exclude) {
    string result;
    foreach (struct_name, struct_values; structs.object) {
        if (defs_to_exclude.canFind(struct_name)) continue;
        string struct_result = nl("struct %s {".format(struct_name));
        foreach (k, v; struct_values.array) {
            auto name = parse_json_value!"name"(v);
            auto type = parse_json_value!"type"(v);
            if (type.canFind("ImVector")) continue;
            struct_result ~= nl("    %s;".format(format_struct_value(type, name)));
        }
        struct_result ~= nl("}");
        result ~= nl(struct_result);
    }
    return result;
}

string parse_structs_and_enums(string text, string[] defs_to_exclude) {
    auto j = parseJSON(text);
    auto enums = nl(parse_enums(j["enums"]));
    auto structs = nl(parse_structs(j["structs"], defs_to_exclude));
    return wrap_extern_c(enums ~ structs);
}

string parse_typedefs(string text, string[] defs_to_exclude) {
    auto j = parseJSON(text);
    string[] typedefs;
    foreach (name, v; j.object) {
        if (defs_to_exclude.canFind(name)) continue;
        auto type = parse_type(parse_json_value_to_str(v).strip(";"));
        if (type == "T" || type == "value_type*") continue;
        if (is_function_def(type)) {
            auto ret = get_struct_member_function_return_type(type);
            auto args = get_struct_member_function_args(type);
            string func = parse_func(ret, args, "function");
            typedefs ~= "alias %s = %s".format(name, func);
        } else if (is_struct(type)) {
            typedefs ~= type;
        } else {
            typedefs ~= "alias %s %s".format(type, name);
        }
    }

    string result;
    foreach (t; typedefs) {
        result ~= nl("%s;".format(t));
    }
    return result;
}

string[] get_typedefs(string text) {
    auto j = parseJSON(text);
    string[] typedefs;
    foreach (k, v; j.object) {
        typedefs ~= k;
    }
    return typedefs;
}

string[] get_structs(string text) {
    auto j = parseJSON(text);
    auto structs = j["structs"];
    string[] structs_defined;
    foreach (k, v; structs.object) {
        structs_defined ~= k;
    }
    return structs_defined;
}

string build_binds(function_decl[] decls_to_bind) {
    auto r = `
import core.sys.posix.dlfcn;
import std.string;

void* get_shared_handle(string shared_library) {
    return dlopen(toStringz(shared_library), RTLD_NOW);
}

T bind(T)(void* handle, string name) {
    import std.stdio;
    auto r = cast(T)dlsym(handle, toStringz(name));
    if (!r) {
        writeln("Could not find symbol " ~ name);
    }
    return r;
}
`;

    r ~= nl("bool load_imgui_lib(string shared_library) {");
    r ~= nl(`
    auto handle = get_shared_handle(shared_library);
    if (!handle) {
        return false;
    }`);
    auto format_bind = (function_decl d) => nl(`    %s = bind!%s(handle, "%s");`.format(d.name, d.type_name, d.name));
    foreach (d; decls_to_bind) {
       r ~= format_bind(d);
    }
    r ~= nl("return true;");
    r ~= nl("}");

    return r;
}

class dimgui_module {
    string result;
    this() {
        result ~= nl("module dimgui;");
        result ~= nl("import derelict.glfw3.glfw3;");
        result ~= nl!2("import core.stdc.stdarg:va_list;");
    }

    void append(string v) {
        result ~= v;
    }

    override string toString() {
        return result;
    }
}

string read_file(string file_name) {
    import std.file;
    return readText(file_name);
}

void write_to_file(string file_name, string text) {
    import std.file;
    write(file_name, text);
}

string get_output_file(string file_name) {
    return "./cimgui/generator/output/%s.json".format(file_name);
}

void run() {
    auto dimgui = new dimgui_module;
    function_decl[] function_decls;
    auto load_function_decl = new function_decl("void", "dimgui_init", "");
    load_function_decl.set_type_name("dimgui_init_t0");
    function_decls ~= load_function_decl;

    auto defs_text = read_file(get_output_file("definitions"));
    function_decls ~= parse_definitions(defs_text);

    auto impl_defs_text = read_file(get_output_file("impl_definitions"));
    function_decls ~= parse_definitions(impl_defs_text);

    dimgui.append(nl!2(format_function_decls_alias_str(function_decls)));
    dimgui.append(nl!2(format_function_decls_str(function_decls)));

    auto structs_and_enums_defs = read_file(get_output_file("structs_and_enums"));
    auto defs_to_exclude = get_structs(structs_and_enums_defs);
    dimgui.append(
        nl!2(parse_structs_and_enums(structs_and_enums_defs, null))
    );

    auto typedefs = read_file(get_output_file("typedefs_dict"));
    dimgui.append(
        parse_typedefs(typedefs, defs_to_exclude)
    );

    dimgui.append(build_binds(function_decls));

    write_to_file("./output/dimgui.d", dimgui.toString);
}
