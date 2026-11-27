// Слайд 5. Области видимости
// Ожидаемый вывод:
//   1
//   6

x = 1
def y = 2

def show() {
    println x
}
show()

// println y внутри show() не сработает:
// y – локальная переменная скрипта
def counter = 0
[1, 2, 3].each { counter += it }
println counter
