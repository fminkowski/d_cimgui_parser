module dimgui.dimgui;
import std.json;
import dimgui.test;
import std.string;
import std.stdio;

//import dimgui.gen;

struct decl {
    string type;
    string name;
}

decl[] decls;

string get_return_type(JSONValue element) {
    string return_type;
    if ("constructor" in element) {
        return_type = element["stname"].str ~ "*";
    } else {
        return_type = element["ret"].str;
    }
    return return_type;
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

string parse_ref(string v) {
    const auto contains_ref_op = v.indexOf("&") != -1;
    if (contains_ref_op) {
        v = v.replace("&", "");
        v = "ref " ~ v;
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
        case "out": result = "out_val"; break;
        case "in": result = "in_val"; break;
        case "ref": result = "ref_val"; break;
        case "...": result = "args"; break;
        default: break;
    }
    return result;
}

string parse_func(string ret, string args_str, string arg_name = "", bool is_type = true) {
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

    auto result = parse_type(ret) ~ " " ~ (is_type ? "function" : arg_name) ~ "(";
    foreach (i, f; formatted_args) {
        result ~= f;
        result ~= (i != formatted_args.length - 1) ? ", " : "";
    }
    result ~= ")";
    if (arg_name != "" && is_type) {
        result ~= " " ~ arg_name;
    }
    return result;
}

struct arg {
    string arg_type;
    string arg_name;
    string func_ret;
    string func_sig;

    private bool is_func() {
        return func_ret != null && func_ret != "";
    }

    string toString(){
        return is_func()
            ? parse_func(func_ret, func_sig, arg_name)
            : parse_type(arg_type) ~ " " ~ parse_name(arg_name);
    }
}

string parse_args(JSONValue element) {

    import std.string;
    arg[] args;
    foreach (k, e; element.array) {
        args ~= arg(
            e["type"].str,
            e["name"].str,
            "ret" in e ? e["ret"].str : "",
            "signature" in e ? e["signature"].str : ""
        );
    }

    string result;
    foreach (i, a; args) {
       result ~= a.toString();
       result ~= (i != args.length - 1) ? ", " : "";
    }
    return result;
}

string make_statement_type(string name, int count) {
    import std.conv : to;
    return name ~ "_t" ~ to!string(count);
}

string make_type_alias(JSONValue element, int count) {
    const auto cimgui_name = parse_json_value(element["ov_cimguiname"]);
    const auto return_type = get_return_type(element);
    auto type_alias = "alias " ~
        make_statement_type(cimgui_name, count) ~
        " = " ~
        remove_const(return_type) ~
        " function(" ~
        parse_args(element["argsT"]) ~
        ")";
   return type_alias; 
}

decl make_decl(JSONValue element, int count) {
    const auto cimgui_name = parse_json_value(element["ov_cimguiname"]);
    return decl(make_statement_type(cimgui_name, count), cimgui_name);
}

string to_lines(T)(T[] values) {
    string result;
    foreach (v; values) {
        result ~= v ~ ";\n";
    }
    return result;
}

string nl(string v) {
    return v ~ "\n";
}

string wrap_extern_c(string v) {
    return nl(nl("extern(C) @nogc nothrow {")) ~ v ~ nl("}");
}

string parse_definitions(string text) {
    import std.algorithm.iteration;
    import std.algorithm : canFind;
    import std.array;
    auto j = parseJSON(text);

    string result;
    string[] cimgui_names;
    string[] type_aliases;
    foreach (k, values; j.object) {
        int count;
        foreach (k2, v; values.array) {
            const auto name = parse_json_value(v["ov_cimguiname"]);
            const auto args = parse_args(v["argsT"]);
            const auto return_type = get_return_type(v);

            bool delegate(string) is_excluded = (t) => name.canFind(t) || args.canFind(t) || return_type.canFind(t);
            if (
                is_excluded("ImVec") ||
                is_excluded("SDL") ||
                is_excluded("SDL") ||
                is_excluded("OpenGL2") ||
                is_excluded("ImColor")) continue;

            type_aliases ~= make_type_alias(v, count);
            auto decl = make_decl(v, count);
            decls ~= decl;
            cimgui_names ~= decl.type ~ " " ~ decl.name;
            count++;
        }
    }

    auto type_result = wrap_extern_c(type_aliases.uniq.array.to_lines);
    result ~= nl(type_result);

    auto decls = nl("__gshared {");
    decls ~= cimgui_names.uniq.array.to_lines;
    decls ~= nl("}");
    result ~= nl(decls);

    return result;
}

string parse_json_value(JSONValue v) {
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

string format_enum_value(JSONValue value) {
    string result = parse_json_value(value["name"]);
    if ("value" in value) {
        result ~= " = " ~ parse_json_value(value["value"]);
    }
    return result; 
}

string parse_enums(JSONValue enums) {
    string result;
    foreach (enum_name, enum_values; enums.object) {
        string enum_result = nl("enum {");
        foreach (k, v; enum_values.array) {
            enum_result ~= nl("    " ~ format_enum_value(v) ~ ",");
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

string get_struct_member_function_ret(string v) {
    auto index1 = v.indexOf("(");
    return v[0 .. index1];
}

unittest {
    auto result = get_struct_member_function_ret("void(*)(int abc)");
    assert(result == "void");
}

string get_struct_member_function_args(string v) {
    auto index1 = v.indexOf(")");

    auto params = v[index1 + 1 .. $];
    return params;
}

unittest {
    auto result = get_struct_member_function_args("void(*)(int a)");
    assert(result == "(int a)");

    result = get_struct_member_function_args("void(*)(int a, char c)");
    assert(result == "(int a, char c)");

}

string parse_function_def(string name, string type) {
    auto no_const = remove_const(type);
    auto ret = get_struct_member_function_ret(no_const);
    auto args = get_struct_member_function_args(no_const);
    string func = "alias " ~ name ~ " = " ~ parse_func(ret, args, "", true);
    return func;
}

unittest {
    void test(string name, string type, string expected, int line = __LINE__) {
        auto result = parse_function_def(name, type);
        areEqual(expected, result, "", __FILE__, line);
    }
    test("test", "void(*)(void* user_data)", "void test(void* user_data)");
    test("test", "void(*)(void* user_data,const char* text)", "void test(void* user_data, char* text)");
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

string format_struct_value(JSONValue v) {
    auto name = parse_json_value(v["name"]);
    auto type = parse_json_value(v["type"]);
    if (is_function_def(type)) {
        return parse_function_def(name, type);
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
    import std.algorithm: canFind;
    string result;
    foreach (struct_name, struct_values; structs.object) {
        if (defs_to_exclude.canFind(struct_name)) continue;
        string struct_result = nl("struct " ~ struct_name  ~ " {");
        foreach (k, v; struct_values.array) {
            auto type = parse_json_value(v["type"]);
            if (type.canFind("ImVector_")) continue;
            struct_result ~= nl("    " ~ format_struct_value(v) ~ ";");
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
    import std.algorithm: canFind;

    auto j = parseJSON(text);
    string[] typedefs;
    foreach (k, v; j.object) {
        if (defs_to_exclude.canFind(k)) continue;
        auto type = parse_type(parse_json_value(v).strip(";"));
        if (type == "T" || type == "value_type*") continue;
        if (is_function_def(type)) {
            typedefs ~= parse_function_def(k, type);
        } else if (is_struct(type)) {
            typedefs ~= type;
        } else {
            typedefs ~= "alias " ~ type ~ " " ~ k;
        }
    }

    string result;
    foreach (t; typedefs) {
        result ~= nl(t ~  ";");
    }
    return result;
}

void write_to_file(string file_name, string text) {
    import std.file;
    write(file_name, text);
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

string build_binds() {
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
    foreach (d; decls) {
       r ~= nl("    " ~ d.name ~ " = bind!" ~ d.type ~ "(handle, \"" ~ d.name ~ "\");"); 
    }
    r ~= nl("return true;");
    r ~= nl("}");

    return r;
}

void run() {
    import std.file;

    string result;
    result ~= nl("module dimgui;");
    result ~= nl("import derelict.glfw3.glfw3;");
    result ~= nl("import core.stdc.stdarg:va_list;");

    auto defs = readText("./output/definitions.json");
    auto defs_result = parse_definitions(defs);
    result ~= nl(defs_result);

    auto impl_defs = readText("./output/impl_definitions.json");
    auto impl_defs_result = parse_definitions(impl_defs);
    result ~= nl(impl_defs_result);

    auto structs_and_enums_defs = readText("./output/structs_and_enums.json");
    auto defs_to_exclude = get_structs(structs_and_enums_defs);
    result ~= parse_structs_and_enums(structs_and_enums_defs, null);

    auto typedefs = readText("./output/typedefs_dict.json");
    result ~= parse_typedefs(typedefs, defs_to_exclude);

    result ~= build_binds();

    write_to_file("./source/dimgui/gen.d", result);
    write_to_file("./gen.d", result);
}
