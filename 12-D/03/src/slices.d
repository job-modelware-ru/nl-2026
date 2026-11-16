import std.stdio;

void main()
{
    int[] a = [10, 20, 30];
    int[] sharedView = a; // shared elements
    sharedView[0] = 99;

    int[] independent = a.dup;
    independent[1] = 77;
    immutable(int)[] frozen = a.idup;

    writeln("a: ", a);                  // [99, 20, 30]
    writeln("copy: ", independent);     // [99, 77, 30]
    writeln("immutable: ", frozen);     // [99, 20, 30]
}
