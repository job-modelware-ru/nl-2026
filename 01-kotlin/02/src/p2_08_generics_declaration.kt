// Слайд 9: Обобщенные типы — Декларация, инстанцирование и ограничения

// 1. Обобщённый класс с параметром типа T
class StorageBox<T>(private var item: T) {
    fun get(): T = item
    fun update(newItem: T) {
        item = newItem
    }
}

// 2. Обобщённая функция с верхней границей типа (Upper Bound)
fun <T : Comparable<T>> findMax(first: T, second: T): T {
    return if (first >= second) first else second
}

fun main() {
    // Инстанцирование: тип String выводится автоматически или указывается явно
    val stringBox = StorageBox<String>("Kotlin 2.4")
    val intBox = StorageBox(2026)

    println("В коробках: ${stringBox.get()} и ${intBox.get()}")
    println("Максимум из чисел: ${findMax(42, 99)}")
    println("Максимум из строк: ${findMax("Alpha", "Omega")}")
}