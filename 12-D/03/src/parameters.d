import std.stdio;

void bump(ref int x) { ++x; }
void setAnswer(out int x) { x = 42; }

void main()
{
    int a = 4;
    int b;
    bump(a);
    setAnswer(b);
    writeln(a, " ", b); // 5 42
}
