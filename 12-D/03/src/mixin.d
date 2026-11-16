import std.stdio;

mixin template Printable()
{
    void print() { writeln("value = ", value); }
}

struct Item
{
    int value;
    mixin Printable;
}

void main()
{
    Item item = Item(7);
    item.print(); // value = 7
}
