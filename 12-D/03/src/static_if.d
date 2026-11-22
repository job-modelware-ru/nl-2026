import std.stdio;

string describe(T)(T value)
{
    static if (is(T == int))
        return "integer";
    else static if (is(T == string))
        return "string";
    else
        return "other type";
}

void main()
{
    writeln(describe(5));        // integer
    writeln(describe("Hello"));  // string
}
