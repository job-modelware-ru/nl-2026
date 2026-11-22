package main

import "core:fmt"

apply :: proc(value: int, operation: proc(int) -> int) -> int {
    return operation(value)
}

main :: proc() {
    double := proc(x: int) -> int { return x * 2 }
    fmt.println("double(7) =", apply(7, double))

    // В Odin нет захвата локальных переменных анонимной процедурой.
    // Следующий пример НЕ компилируется, поэтому оставлен комментарием:
    // factor := 3
    // triple := proc(x: int) -> int { return x * factor }
}
