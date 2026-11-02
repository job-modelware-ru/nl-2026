// Слайд 12: Стандартная библиотека ввода-вывода — Консоль и файлы
import java.io.File

fun main() {
    // 1. Работа с консолью (безопасное чтение с подстановкой по умолчанию)
    print("Введите имя пользователя (или Enter для 'Гость'): ")
    val user = readlnOrNull()?.ifBlank { "Гость" } ?: "Гость"
    println("Привет, $user!")

    // 2. Запись и чтение файла средствами стандартной библиотеки Kotlin
    val logFile = File("session_log.txt")
    logFile.writeText("Сессия запущена: пользователь $user\n")
    logFile.appendText("Статус: успешно обработано\n")

    // 3. Построчное чтение с автоматическим закрытием ресурса (useLines)
    val lineCount = logFile.useLines { lines ->
        lines.forEach { line -> println("Прочитано: $line") }
    }

    // Удаление временного файла после демонстрации
    logFile.delete()
}