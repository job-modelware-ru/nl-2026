package main

import "core:fmt"

main :: proc() {
    original := [3]int{10, 20, 30}
    copy_of_array := original // массив копируется по значению
    copy_of_array[0] = 999
    fmt.println("original:", original)
    fmt.println("copy:", copy_of_array)

    ptr := new(int)
    defer delete(ptr) // явное освобождение выделенной памяти
    ptr^ = 42
    fmt.println("pointer value:", ptr^)
}
