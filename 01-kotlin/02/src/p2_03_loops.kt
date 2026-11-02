// Слайд 4: Конструкции потока управления — Циклы (for, while, do-while, метки)

fun main() {
    // 1. Цикл for по диапазону с шагом (step) и в обратном порядке (downTo)
    print("Обратный отсчёт с шагом 2: ")
    for (i in 10 downTo 2 step 2) {
        print("$i ")
    }
    println()

    // 2. Обход списка с индексами (withIndex)
    val languages = listOf("Kotlin", "Java", "Rust")
    for ((index, lang) in languages.withIndex()) {
        println("[$index] -> $lang")
    }

    // 3. Цикл while и выход по метке из вложенного цикла (break@outer)
    var sum = 0
    outer@ for (row in 1..3) {
        for (col in 1..3) {
            sum += row * col
            if (sum > 10) {
                println("Остановка на ($row, $col), сумма = $sum")
                break@outer
            }
        }
    }
}