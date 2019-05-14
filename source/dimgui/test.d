module dimgui.test;

import std.stdio;
import std.conv;

struct test {
    string name;
}

void areEqual(T)(T expected, T actual, string custom_msg = "", string file = __FILE__, int line = __LINE__) {
    auto result = expected == actual;
    if (!result) {
        auto msg = "Expected <" ~ expected.to!string ~ "> to BE equal to <" ~ actual.to!string ~ ">";
        print(file, line, msg, custom_msg);
        assert(result);
    }
}

unittest {
    areEqual(1, 1);
}

void notEqual(T)(T expected, T actual, string custom_msg = "", string file = __FILE__, int line = __LINE__) {
    auto result = expected != actual;
    if (!result) {
        auto msg = "Expected <" ~ expected.to!string ~"> to NOT equal <" ~ actual.to!string ~ ">";
        print(file, line, msg, custom_msg);
        assert(result);
    }
}

unittest {
    notEqual(1, 2);
}

void isTrue(T)(T value, string custom_msg = "", string file = __FILE__, int line = __LINE__) {
    if (!value) {
        auto msg = "Expected true.";
        print(file, line, msg, custom_msg);
        assert(value);
    }
}

unittest {
    isTrue(true);
}

void isFalse(T)(T value, string custom_msg = "", string file = __FILE__, int line = __LINE__) {
    if (value) {
        auto msg = "Expected  false.";
        print(file, line, msg, custom_msg);
        assert(!value);
    }
}

unittest {
    isFalse(false);
}

void print(string file, int line, string msg, string custom_msg) {
    auto final_msg = file ~ "(" ~ line.to!string ~ "): " ~ msg;
    if (!custom_msg.null_or_empty) {
        final_msg = msg ~ " => " ~ custom_msg;
    }
    writeln(final_msg);
}

bool null_or_empty(string val) {
    return val is null || val == val.init;
}

T first(T)(T[] collection, bool delegate(T) cmp) {
    T result;
    foreach (ref T c; collection) {
        if (cmp(c)) {
            result = c;
            break;
        }
    }
    return result;
}
