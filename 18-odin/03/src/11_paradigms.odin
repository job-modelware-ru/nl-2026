package main

import "core:fmt"

Point :: struct {
    x, y: f32,
}

translate :: proc(p: ^Point, dx, dy: f32) {
    p.x += dx
    p.y += dy
}

main :: proc() {
    position := Point{x = 1, y = 2}
    translate(&position, 3, 4)
    fmt.println("point:", position)
}
