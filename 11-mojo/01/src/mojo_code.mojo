# ===== Слайд 2: О Mojo: первая программа =====
def main() raises:
    var name: String = "Mojo"
    var greeting: String = "Hi, " + name + "!"
    print(greeting)

# ===== Слайд 5: Запуск языка: hello.mojo =====
# def main():
#     print("hello, Mojo!")

# ===== Слайд 7: Ввод/вывод: input() =====
# def main() raises:
#     var name: String = input("Who are you? ")
#     var greeting: String = "Hi, " + name + "!"
#     print(greeting)

# ===== Слайд 7: Ввод/вывод: argv() =====
# from std.sys import argv
#
# def main() raises:
#     var args = argv()
#     for arg in args:
#         print(arg)

# ===== Слайд 8: Ввод/вывод: файлы =====
# from std.os import path
#
# def main() raises:
#     var filename: String = "example.txt"
#
#     with open(filename, "w") as f:
#         f.write("Привет из Mojo!\n")
#         f.write("Вторая строка.\n")
#
#     if path.exists(filename):
#         print("Файл создан:", filename)
#
#     with open(filename, "r") as f:
#         var content = f.read()
#         print("Содержимое файла:")
#         print(content)

# ===== Слайд 10: Переменные (1) =====
# def main() raises:
#     var a: Int = 10
#     var b: Int
#     b = 3
#     #var b ERROR
#     c = 10 #WARNING
#     print("+:", a + b)
#     print("//:", a // b)
#     print("%:", a % b)
#     print(">:", a > b)
#     print("&:", (a > b) and (b > 0))
#     var i: Int = 42
#     var f: Float64 = Float64(i)      # Int -> Float64
#     var s: String = String(i)        # Int -> String

# ===== Слайд 10: Переменные (2): владение =====
# var s1: String = "hello"
# var s2 = s1
# s2 += " World"
# print("s1:", s1)
# print("s2:", s2)
#
# consume(s1^)     # ^ передаёт владение
# # print(s1)      # ERROR
# print("s2:", s2)

# ===== Слайд 11: Переменные: блочная область видимости =====
# def main():
#     var a = 10
#
#     if a == 10:
#         var b = 20
#         print(a)   # внешняя переменная доступна
#         print(b)   # переменная внутри своего блока доступна
#
#     # print(b)     # Ошибка: использование неопределенной переменной "b"
#     print(a)      # доступна

# ===== Слайд 12: Функции: сигнатура (шаблон со слайда) =====
# def name[parameter-list](argument-list) raises
#     -> ReturnType where constraint:
#     body

# ===== Слайд 12: Функции: пример простейшей функции =====
# def do_nothing():
#     pass

# ===== Слайд 12: Функции: аргументы и параметры =====
# # [size: Int] — параметр
# # (x: Int)    — аргумент
#
# def add(a: Int, b: Int) -> Int: # только аргументы
#     return a + b
#
# def get_max_size[size: Int]() -> Int: # только параметр
#     return size * 2
#
# def make_array[size: Int](x: Int) -> Int: # и аргумент,
#     return x * size                       # и параметр

# ===== Слайд 14: Соглашения о передаче аргументов: mut =====
# def double_it(mut x: Int):
#     x *= 2

# ===== Слайд 14: Соглашения о передаче аргументов: deinit =====
# struct Resource:
#     var handle: Int
#     def __deinit__(deinit self):
#         _release(self.handle)

# ===== Слайд 14: Соглашения о передаче аргументов: var =====
# def consume(var s: String):
#     s += "!"; print(s)
# def main():
#     var greeting = "Hello"
#     consume(greeting) # Hello!
#     print(greeting) # Hello

# ===== Слайд 14: Соглашения о передаче аргументов: ref =====
# def get_first[T: Copyable](ref data: List[T]) -> ref[data[0]] T:
#     return data[0]
# def main():
#     ref first = get_first(data) # mutable

# ===== Слайд 14: Соглашения о передаче аргументов: out =====
# def make_int(out result: Int):
#     result = 42
# def main():
#     var x = make_int()
#     print(x) # 42

# ===== Слайд 14: Соглашения о передаче аргументов: read (по умолчанию) =====
# def length[T: Copyable](s: List[T]) -> Int:
#     return len(s)

# ===== Слайд 15: Функции: рекурсия =====
# def factorial(n: Int) -> Int:
#     if n <= 1:
#         return 1
#     return n * factorial(n - 1)
#
# def main():
#     print(factorial(5)) # 120

# ===== Слайд 16: Функции: замыкание (шаблон со слайда) =====
# def name[parameter-list](argument-list) raises {capture-list} -> ReturnType:
#     body

# ===== Слайд 16: Функции: замыкание (пример) =====
# def main():
#     var multiplier = 3
#
#     def scale(x: Int) {imm multiplier} -> Int:
#         return x * multiplier
#
#     print(scale(5))  # 15

# ===== Слайд 17: Поток управления: if / elif / else (1) =====
# def main() raises:
#     score = 65
#     if score >= 90:
#         print("A")
#     elif score >= 75:
#         print("B")
#     elif score >= 60:
#         print("C")
#     else:
#         print("F")
#     #Output C
#     var n: Int = 7
#     var parity: String = "even" if n % 2 == 0 else "odd"
#     print(n, "-", parity) #7 - odd

# ===== Слайд 17: Поток управления: if / elif / else (2) =====
# var age: Int = 20
# var has_ticket: Bool = True
#
# if age >= 18 and has_ticket:
#     print("Access")
# elif age >= 18 and not has_ticket:
#     print("Need ticket")
# else:
#     print("Need 18 years")
# #Output Access

# ===== Слайд 18: Поток управления: while (1) =====
# def main() raises:
#     var n: Int = 0
#     while n < 3:
#         print("n =", n)
#         n += 1
#     else:
#         print("W/o break\n")
#
#     var k: Int = 0
#     while k < 5:
#         if k == 2:
#             print("k = 2!!")
#             break
#         print("k =", k)
#         k += 1
#     else:
#         print("W break")

# ===== Слайд 18: Поток управления: while (2) =====
# var p: Int = 0
# while p < 6:
#     p += 1
#     if p % 2 == 0:
#         continue
#     print("odd -", p)
# else:
#     print("W continue\n")
#
# var m: Int = 10
# while m < 5:
#     print("m =", m)
#     m += 1
# else:
#     print("W False")

# ===== Слайд 19: Поток управления: for (1) =====
# for i in range(5):
#     print("i =", i)
# var x = ["A", "B", "C"]
# for i in x:
#     print(i)
# var y = ["a", "b", "c", "d"]
# for i in y:
#     if i == "d":
#         print("Find d")
#         break
# for i in range(6):
#     if i % 2 == 0:
#         continue
#     print("odd -", i)

# ===== Слайд 19: Поток управления: for (2) =====
# for i in range(5):
#     print("i =", i)
# else:
#     print("W/o break")
# var values = [1, 4, 7, 3, 6, 11]
# for ref value in values:
#     if value % 2 != 0:
#         value -= 1
# for i in values:
#     print(i)
