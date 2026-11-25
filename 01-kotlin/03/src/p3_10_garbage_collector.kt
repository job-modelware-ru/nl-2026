// Слайд 11: Сборщик мусора (Garbage Collector) и слабые ссылки (WeakReference)
import java.lang.ref.WeakReference

class CacheItem(val name: String)

fun main() {
    val runtime = Runtime.getRuntime()
    val usedBefore = (runtime.totalMemory() - runtime.freeMemory()) / 1024

    // Создаём объект и оборачиваем в слабую ссылку (не удерживает объект от GC)
    var strongRef: CacheItem? = CacheItem("Временный буфер данных")
    val weakRef = WeakReference(strongRef)

    println("До очистки: объект в кэше = ${weakRef.get()?.name}")
    println("Используемая память: ~${usedBefore} КБ")

    // Обнуляем сильную ссылку — объект становится кандидатом на удаление GC
    strongRef = null
    System.gc() // Подсказка виртуальной машине запустить сборку мусора

    println("После потери сильной ссылки объект будет автоматически удалён GC.")
}