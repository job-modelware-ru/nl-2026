package main

import "core:fmt"

Normal :: struct {
    x: i64,
    y: u8,
}

Packed :: struct #packed {
    x: i64,
    y: u8,
}

#assert(size_of(Packed) == 9)

main :: proc() {
    fmt.println("normal size:", size_of(Normal))
    fmt.println("packed size:", size_of(Packed))
}
