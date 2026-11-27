// Слайд 8. Статическая проверка типов
// Ожидаемый вывод:
//   5

import groovy.transform.CompileStatic

@CompileStatic
class Calc {
    int add(int a, int b) { a + b }
}

println new Calc().add(2, 3)

// new Calc().add("2", 3)
// ошибка компиляции: нет метода
