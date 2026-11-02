// Слайд 10: Обобщенные типы — Использование, вариантность (in/out) и reified

// Ковариантность (out): Producer только возвращает T (безопасно читать как родителя)
interface Producer<out T> {
    fun produce(): T
}

// Контравариантность (in): Consumer только принимает T
interface Consumer<in T> {
    fun consume(item: T)
}

// Сохранение типа во время выполнения с помощью inline + reified
inline fun <reified T> filterByType(items: List<Any>): List<T> {
    val result = mutableListOf<T>()
    for (element in items) {
        if (element is T) { // Доступно благодаря reified!
            result.add(element)
        }
    }
    return result
}

fun main() {
    val mixed: List<Any> = listOf("Kotlin", 100, "JVM", 42, true)
    val stringsOnly = filterByType<String>(mixed)
    val intsOnly = filterByType<Int>(mixed)
    println("Только строки: $stringsOnly")
    println("Только числа: $intsOnly")
}