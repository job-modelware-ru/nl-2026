import std.stdio;
import std.conv : to;

int parseGrade(string value)
{
    int n = to!int(value);
    if (n < 1 || n > 5)
        throw new Exception("Grade must be 1..5");
    return n;
}

void main()
{
    try
    {
        writeln(parseGrade("7"));
    }
    catch (Exception e)
    {
        writeln("Error: ", e.msg);
    }
}
