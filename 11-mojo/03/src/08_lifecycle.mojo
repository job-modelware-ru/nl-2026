# Слайд 8: жизненный цикл значения
struct Buf(Copyable, Movable):
    var data: List[Int]
    def __init__(out self, n: Int):
        self.data = List[Int](length=n, fill=0)
        print("init")
    def __init__(out self, *, copy: Self):
        self.data = copy.data.copy()
        print("copy")
    def __init__(out self, *, deinit move: Self):
        self.data = move.data^
        print("move")
    def __deinit__(deinit self):
        print("deinit, len =", len(self.data))

def main():
    var a = Buf(3)
    var b = a.copy()
    var c = b^
    var items = List[Buf]()
    items.append(c^)
    print("в списке:", len(items))
