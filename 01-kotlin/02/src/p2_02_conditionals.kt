// Слайд 3: Конструкции потока управления — Условные конструкции (if-else, when)

fun evaluateScore(score: Int): String {
    // if-else как выражение (возвращает значение)
    val status = if (score >= 60) "Зачёт" else "Пересдача"

    // Конструкция when с диапазонами и условиями
    val grade = when (score) {
        in 90..100 -> "Отлично (A)"
        in 75..89  -> "Хорошо (B)"
        in 60..74  -> "Удовлетворительно (C)"
        in 0..59   -> "Неудовлетворительно (F)"
        else       -> "Некорректный балл"
    }
    return "$status — $grade"
}

fun inspectObject(obj: Any): String = when (obj) {
    0          -> "Ноль"
    is Int     -> "Целое число: ${obj * 2}"
    is String  -> "Строка длиной ${obj.length}"
    else       -> "Неизвестный тип"
}

fun main() {
    println(evaluateScore(85))
    println(inspectObject("Kotlin"))
    println(inspectObject(21))
}