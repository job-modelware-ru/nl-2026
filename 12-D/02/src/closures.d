import std.stdio;

auto makeCounter()
{
    int count = 0;
    return () { return ++count; };
}

void main()
{
    auto next = makeCounter();
    writeln(next()); // 1
    writeln(next()); // 2
}
