// Слайд 2: Функции — выходные данные (return, Unit, функции-выражения)

// 1. Классическая функция с явным return и типом Int
fun square(number: Int): Int {
    return number * number
}

// 2. Функция-выражение (Single-expression function)
fun cube(number: Int) = number * number * number

// 3. Возврат нескольких значений через Pair / деструктуризацию
fun minMax(a: Int, b: Int): Pair<Int, Int> =
    if (a < b) Pair(a, b) else Pair(b, a)

// 4. Тип Unit (аналог void) — можно не указывать явно
fun printReport(title: String): Unit {
    println("=== Отчёт: $title ===")
}

fun main() {
    printReport("Выходные данные функций")
    val sq = square(5)
    println("Квадрат 5: $sq, Куб 3: ${cube(3)}")

    val (minVal, maxVal) = minMax(42, 17)
    println("Минимум: $minVal, Максимум: $maxVal")
}