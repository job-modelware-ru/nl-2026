import std.stdio;

void main()
{
    int[string] marks = ["Anna": 5, "Ben": 4];
    marks["Sam"] = 5;
    writeln("Anna: ", marks["Anna"]);
    writeln("Students: ", marks.length);
    writeln("Has Ben: ", ("Ben" in marks) !is null);
}
