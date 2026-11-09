# Слайд 9: куча вручную и умные указатели
from std.memory import ArcPointer, Layout, OwnedPointer, dealloc

def main():
    var mem = alloc(Layout[Int](count=4))  # Allocation[Int]
    var p = mem.unsafe_ptr()
    for i in range(4):
        p.unsafe_offset(i).unsafe_write(i * i)
    print(p[unsafe_offset=3])
    dealloc(mem^)  # без этой строки - ошибка компиляции:
    # 'mem' abandoned without being explicitly destroyed

    var box = OwnedPointer(42)  # один владелец
    var shared = ArcPointer[List[Int]]([1, 2, 3])
    var other = shared  # копия указателя, счётчик ссылок + 1
    print(box[], other[][0], shared.count())
