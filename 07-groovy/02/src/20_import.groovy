// Слайд 21. Импорт классов
// Ожидаемый вывод:
//   1
//   7
//   2026-01-01

import java.time.LocalDate as Day
import java.util.concurrent.atomic.AtomicInteger
import static java.lang.Math.max

def counter = new AtomicInteger()
counter.incrementAndGet()
println counter
println max(3, 7)
println Day.of(2026, 1, 1)
