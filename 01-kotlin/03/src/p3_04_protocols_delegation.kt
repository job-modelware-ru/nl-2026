// Слайд 5: Протокол-ориентированное программирование и делегирование (by)

// Протокол (интерфейс) с методом по умолчанию
interface StorageEngine {
    fun save(data: String)
    fun status(): String = "Хранилище активно"
}

class CloudStorage : StorageEngine {
    override fun save(data: String) = println("Сохранено в облако: '$data'")
}

// Делегирование реализации интерфейса через ключевое слово by (композиция вместо наследования)
class AuditedStorage(private val engine: StorageEngine) : StorageEngine by engine {
    // Ленивая инициализация свойства при первом обращении (by lazy)
    val auditPrefix: String by lazy { "[AUDIT-READY]" }

    override fun save(data: String) {
        println("$auditPrefix Проверка перед записью...")
        engine.save(data)
    }
}

fun main() {
    val storage = AuditedStorage(CloudStorage())
    println(storage.status()) // Вызывается делегированный метод
    storage.save("Отчёт за 2026 год")
}