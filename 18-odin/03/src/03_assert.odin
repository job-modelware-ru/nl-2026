package main

import "core:fmt"

#assert(size_of(u64) == 8, "u64 должен занимать 8 байт")

square_root_input :: proc(value: f64) -> f64 {
    assert(value >= 0, "ожидалось неотрицательное значение")
    return value
}

main :: proc() {
    fmt.println("assert: проверка во время выполнения")
    fmt.println("#assert: проверка во время компиляции")
    _ = square_root_input(4)
}
