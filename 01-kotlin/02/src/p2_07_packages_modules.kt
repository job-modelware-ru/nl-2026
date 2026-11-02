// Слайд 8: Управление сложностью кода (пакеты, импорт, модули, экспорт)
package app.analytics

// Импорт с псевдонимом (alias) для устранения конфликта имён
import kotlin.math.PI as MATH_PI
import kotlin.math.roundToInt

// public (по умолчанию) — экспортируется всем внешним модулям
class MetricsReport(val name: String, val value: Double) {
    fun summary(): String = "$name: ${value.roundToInt()}"
}

// internal — доступен внутри текущего модуля (Gradle/Maven), скрыт снаружи
internal object InternalCalculator {
    fun circleArea(radius: Double): Double = MATH_PI * radius * radius
}

// private — виден только внутри этого файла (.kt)
private fun formatLog(msg: String) = "[LOG] $msg"

fun main() {
    val area = InternalCalculator.circleArea(5.0)
    val report = MetricsReport("Площадь круга", area)
    println(formatLog(report.summary()))
}