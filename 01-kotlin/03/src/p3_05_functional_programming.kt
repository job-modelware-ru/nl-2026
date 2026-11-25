// Слайд 6: Функционально-ориентированное программирование (ФП)

// Функция высшего порядка: принимает другую функцию (операцию) как параметр
fun applyOperation(x: Int, y: Int, operation: (Int, Int) -> Int): Int {
    return operation(x, y)
}

fun main() {
    // 1. Передача лямбда-выражения в функцию высшего порядка
    val product = applyOperation(6, 7) { a, b -> a * b }
    println("Произведение: $product")

    // 2. Декларативный конвейер обработки неизменяемой коллекции
    val salaries = listOf(45_000, 120_000, 85_000, 150_000, 60_000)

    val totalHighSalaryBonus = salaries
        .filter { it >= 80_000 }          // Оставляем высокие оклады
        .map { (it * 0.15).toInt() }      // Вычисляем 15% бонус
        .fold(0) { acc, bonus -> acc + bonus } // Суммируем

    println("Суммарный бонусный фонд: $totalHighSalaryBonus")
}