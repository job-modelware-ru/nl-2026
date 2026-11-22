import std.stdio;

void main()
{
    writeln("Start");
    scope(exit) writeln("Cleanup");
    writeln("Work");
}
