import std.stdio;
import std.concurrency;

void worker()
{
    auto data = receiveOnly!(immutable(int)[])();
    int sum = 0;
    foreach (x; data) sum += x;
    ownerTid.send(sum);
}

void main()
{
    int[] mutableValues = [2, 3, 5];
    immutable(int)[] values = mutableValues.idup;
    auto id = spawn(&worker);
    send(id, values);
    writeln(receiveOnly!int()); // 10
}
