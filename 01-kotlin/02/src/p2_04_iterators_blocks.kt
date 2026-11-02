// Слайд 5: Итераторы, ленивые последовательности (Sequence) и блоки

// Пользовательский класс с собственным итератором
class Countdown(private val start: Int) : Iterable<Int> {
    override fun iterator(): Iterator<Int> = object : Iterator<Int> {
        var current = start
        override fun hasNext(): Boolean = current > 0
        override fun next(): Int = current--
    }
}

fun main() {
    // 1. Явный вызов итератора
    val iterator = Countdown(3).iterator()
    while (iterator.hasNext()) {
        print("${iterator.next()} ")
    }
    println()

    // 2. Ленивые вычисления через Sequence (без промежуточных списков)
    val firstEvenSquares = (1..1000).asSequence()
        .filter { it % 2 == 0 }
        .map { it * it }
        .take(3)
        .toList()
    println("Первые 3 чётных квадрата: $firstEvenSquares")

    // 3. Локальный блок и функция run для изоляции переменных
    val area = run {
        val width = 12
        val height = 5
        width * height
    }
    println("Площадь из блока: $area")
}