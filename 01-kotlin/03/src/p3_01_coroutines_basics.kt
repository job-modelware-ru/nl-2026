// Слайд 2: Конкурентность и параллелизм — Потоки и suspend-функции
import kotlin.concurrent.thread

// Имитация асинхронной приостанавливаемой функции (suspend)
suspend fun fetchUserData(userId: Int): String {
    // В реальном проекте с kotlinx.coroutines здесь вызывается delay(100)
    return "Профиль пользователя #$userId"
}

fun main() {
    println("Главный поток: ${Thread.currentThread().name}")

    // 1. Классический системный поток JVM (тяжеловесный ресурс ОС)
    val worker = thread(start = true, name = "Background-Worker") {
        println("Работа в потоке: ${Thread.currentThread().name}")
    }
    worker.join()

    // 2. Концепция корутин: тысячи задач на пуле из нескольких потоков
    println("Корутины приостанавливают выполнение (suspend) без блокировки потока ОС!")
}