# Слайд 10: вычисления при компиляции
def fib(n: Int) -> Int:
    var a = 0
    var b = 1
    for _ in range(n):
        a, b = b, a + b
    return a

def squares[n: Int]() -> Array[Int, n]:
    var table = Array[Int, n](fill=0)
    for i in range(n):
        table[i] = i * i
    return table^

comptime FIB_90 = fib(90)  # считает компилятор
comptime TABLE = squares[8]()

def main():
    comptime assert FIB_90 > 0, "Int переполнился"
    # с fib(93): error: constraint failed: Int переполнился
    print(FIB_90, materialize[TABLE]())  # TABLE -> рантайм
