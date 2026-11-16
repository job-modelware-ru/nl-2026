import std.stdio;
import std.conv : to;

interface Formatter
{
    string format(int grade);
}

class TextFormatter : Formatter
{
    override string format(int grade)
    {
        return "Grade: " ~ to!string(grade);
    }
}

void main()
{
    Formatter f = new TextFormatter();
    writeln(f.format(5));
}
