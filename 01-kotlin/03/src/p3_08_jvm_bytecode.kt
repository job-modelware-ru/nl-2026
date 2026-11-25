// Слайд 9: Виртуальная машина (JVM) — Байт-код и inline value-классы

// Value-класс оборачивает примитив без выделения объекта в куче JVM
@JvmInline
value class UserId(val id: Long) {
    fun isValid(): Boolean = id > 0
}

class AppConfig {
    companion object {
        // @JvmStatic генерирует настоящий статический метод в байт-коде JVM
        @JvmStatic
        fun jvmInfo(): String {
            val vmName = System.getProperty("java.vm.name")
            val vmVersion = System.getProperty("java.version")
            return "$vmName (JDK $vmVersion)"
        }
    }
}

fun main() {
    val uid = UserId(1024L)
    println("UserId валиден: ${uid.isValid()} (в байт-коде хранится как примитив long)")
    println("Среда исполнения: ${AppConfig.jvmInfo()}")
}