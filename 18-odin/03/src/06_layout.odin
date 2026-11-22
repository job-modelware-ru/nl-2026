package main

import "core:fmt"

Player :: struct {
    active: bool,
    score: i64,
    level: u8,
}

main :: proc() {
    fmt.println("size_of(i64):", size_of(i64))
    fmt.println("align_of(i64):", align_of(i64))
    fmt.println("size_of(Player):", size_of(Player))
    fmt.println("align_of(Player):", align_of(Player))
    // Размер Player зависит от выравнивания на целевой платформе.
}
