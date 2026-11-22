import std.stdio;

double average(const int[] numbers)
{
    assert(numbers.length > 0);
    long sum = 0;
    foreach (x; numbers) sum += x;
    return cast(double) sum / numbers.length;
}

unittest
{
    assert(average([2, 4]) == 3.0);
    assert(average([5, 5]) == 5.0);
}

void main()
{
    writeln(average([5, 4, 3])); // 4
}
