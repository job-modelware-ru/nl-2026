import std.stdio;
import std.algorithm : filter, map;
import std.array : array;

void main()
{
    int[] marks = [5, 2, 4, 3];
    auto result = marks
        .filter!(x => x >= 4)
        .map!(x => x * 10)
        .array;
    writeln(result); // [50, 40]
}
