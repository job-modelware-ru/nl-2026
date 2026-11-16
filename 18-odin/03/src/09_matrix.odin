package main

import "core:fmt"

main :: proc() {
    a := matrix[2, 3]f32{
        2, 3, 1,
        4, 5, 0,
    }
    b := matrix[3, 2]f32{
        1, 2,
        3, 4,
        5, 6,
    }
    c := a * b
    #assert(type_of(c) == matrix[2, 2]f32)
    fmt.println("A * B:", c)
    fmt.println("first element:", c[0, 0]) // 16
    assert(c[0, 0] == 16)
}
