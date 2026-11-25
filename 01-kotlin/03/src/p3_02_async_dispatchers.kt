// Слайд 3: Параллельные вычисления и потокобезопасная синхронизация
import java.util.concurrent.CompletableFuture
import java.util.concurrent.atomic.AtomicInteger

fun main() {
    // 1. Потокобезопасный атомарный счётчик для конкурентной среды
    val completedTasks = AtomicInteger(0)

    // 2. Параллельный запуск задач на общем пуле потоков (аналог async/await)
    val taskA = CompletableFuture.supplyAsync {
        completedTasks.incrementAndGet()
        120 // Результат расчёта A
    }
    val taskB = CompletableFuture.supplyAsync {
        completedTasks.incrementAndGet()
        80  // Результат расчёта B
    }

    val total = taskA.join() + taskB.join()
    println("Сумма параллельных задач: $total")
    println("Выполнено потокобезопасных операций: ${completedTasks.get()}")
}