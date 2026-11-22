import std.stdio;

struct Student
{
    string name;
    int grade;
    bool passed() const { return grade >= 3; }
}

void main()
{
    auto student = Student("Anna", 5);
    writeln(student.name, ": ", student.passed());
}
