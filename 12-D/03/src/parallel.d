import std.stdio;
import std.parallelism : parallel;

void main()
{
    int[] values = [1, 2, 3, 4, 5];
    int[] squares = new int[](values.length);
    foreach (i, ref item; parallel(squares))
        item = values[i] * values[i];
    writeln(squares); // [1, 4, 9, 16, 25]
}
