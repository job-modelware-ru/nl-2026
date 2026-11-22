import std.stdio;

@nogc int sum(scope const(int)[] values)
{
    int result = 0;
    foreach (v; values) result += v;
    return result;
}

void main()
{
    int[5] buffer = [1, 2, 3, 4, 5];
    writeln(sum(buffer[])); // 15
}
