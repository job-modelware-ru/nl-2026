// Слайд 6: Обработка ошибок — Исключения (try-catch-finally, runCatching)

fun parsePort(input: String): Int {
    // try-catch как выражение: возвращает значение последней строки блока
    return try {
        val port = input.toInt()
        if (port !in 1..65535) {
            throw IllegalArgumentException("Порт вне диапазона: $port")
        }
        port
    } catch (e: NumberFormatException) {
        println("Ошибка формата (${e.message}), выбран порт 8080")
        8080
    } finally {
        println("Проверка порта '$input' завершена")
    }
}

fun main() {
    val p1 = parsePort("9090")
    val p2 = parsePort("abc")
    println("Итоговые порты: $p1, $p2")

    // Функциональная обработка ошибок через Result и runCatching
    val result: Result<Int> = runCatching { "123x".toInt() }
    val safeValue = result.getOrElse { -1 }
    println("Результат runCatching: $safeValue")
}