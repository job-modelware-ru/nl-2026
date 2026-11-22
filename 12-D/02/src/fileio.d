import std.stdio;
import std.file : write, readText;

void main()
{
    write("grades.txt", "5 4 3\n");
    string contents = readText("grades.txt");
    writeln("File: ", contents);
}
