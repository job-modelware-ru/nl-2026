import std.stdio;

@safe int first(scope const(int)[] values)
{
    assert(values.length > 0);
    return values[0];
}

pure nothrow @safe @nogc int square(int x)
{
    return x * x;
}

void main()
{
    writeln(first([7, 8])); // 7
    writeln(square(5));     // 25
}
