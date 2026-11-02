// Слайд 11: Коллекции — Массивы, списки (List), множества (Set) и карты (Map)

fun main() {
    // 1. Примитивный массив без накладных расходов боксинга
    val primes: IntArray = intArrayOf(2, 3, 5, 7, 11)
    println("Первый простой элемент: ${primes[0]}, всего: ${primes.size}")

    // 2. Списки: неизменяемый (List) и изменяемый (MutableList)
    val readOnlyList: List<String> = listOf("Android", "Backend")
    val mutableTasks: MutableList<String> = mutableListOf("Код", "Тесты")
    mutableTasks.add("Релиз")

    // 3. Множество (Set) — хранит только уникальные элементы
    val uniqueTags: Set<String> = setOf("kotlin", "jvm", "kotlin", "coroutines")

    // 4. Ассоциативный словарь / карта (Map)
    val versions: Map<String, Double> = mapOf(
        "Kotlin" to 2.4,
        "Java" to 21.0
    )

    println("Задачи: $mutableTasks")
    println("Уникальные теги: $uniqueTags")
    println("Версия Kotlin: ${versions["Kotlin"]}")
}