package main

import "core:fmt"

main :: proc() {
    a := [3]f32{10, 20, 30}
    b := [3]f32{1, 2, 3}
    sum := a + b
    reversed := swizzle(a, 2, 1, 0)

    fmt.println("sum:", sum)
    fmt.println("reversed:", reversed)
    assert(sum == [3]f32{11, 22, 33})
    assert(reversed == [3]f32{30, 20, 10})
}
