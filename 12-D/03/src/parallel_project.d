import std.stdio;
import std.parallelism : parallel;

void main()
{
    enum n = 200_000;
    int[] sequential = new int[](n);
    int[] concurrent = new int[](n);

    foreach (i, ref x; sequential)
    {
        int value = cast(int)(i % 100);
        x = value * value;
    }
    foreach (i, ref x; parallel(concurrent))
    {
        int value = cast(int)(i % 100);
        x = value * value;
    }

    long checksum = 0;
    foreach (x; concurrent) checksum += x;
    writeln("Elements: ", n);
    writeln("Same results: ", sequential == concurrent);
    writeln("Checksum: ", checksum);
}
