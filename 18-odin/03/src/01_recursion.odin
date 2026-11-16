package main

import "core:fmt"

factorial :: proc(n: int) -> int {
    if n <= 1 {
        return 1
    }
    return n * factorial(n - 1)
}

main :: proc() {
    fmt.println("5! =", factorial(5))
    assert(factorial(5) == 120)
}
