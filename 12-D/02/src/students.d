import std.stdio;
import std.file : write;
import std.format : format;

struct Student
{
    string name;
    int[] grades;
}

double average(const int[] grades)
{
    if (grades.length == 0)
        throw new Exception("Empty grades");
    long total = 0;
    foreach (g; grades) total += g;
    return cast(double)total / grades.length;
}

void main()
{
    Student[] group = [
        Student("Anna", [5, 4, 5]),
        Student("Ben", [3, 4, 4])
    ];
    string report;
    foreach (student; group)
    {
        report ~= format("%s: %.2f\n", student.name,
                          average(student.grades));
    }
    write("report.txt", report);
    writef("%s", report);
}
