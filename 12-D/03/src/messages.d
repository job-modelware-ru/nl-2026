import std.stdio;
import std.concurrency;

void worker()
{
    int n = receiveOnly!int();
    ownerTid.send(n * 2);
}

void main()
{
    auto id = spawn(&worker);
    send(id, 21);
    writeln(receiveOnly!int()); // 42
}
