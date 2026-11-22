module grades.stats;

double average(const int[] marks)
{
    if (marks.length == 0)
        throw new Exception("Empty marks");
    long sum = 0;
    foreach (m; marks) sum += m;
    return cast(double) sum / marks.length;
}
