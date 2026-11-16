import std.stdio;

T maximum(T)(T a, T b)
{
    return a > b ? a : b;
}

void main()
{
    writeln(maximum(3, 7));       // 7
    writeln(maximum(2.5, 1.2));   // 2.5
}
