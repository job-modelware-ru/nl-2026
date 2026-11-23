package main
import "core:fmt"
import "core:mem"
make_numbers :: proc() -> []int {
    values := make([]int, 3)
    values[0], values[1], values[2] = 10, 20, 30
    return values
}
main :: proc() {
    backing: [4096]u8
    arena: mem.Arena
    mem.arena_init(&arena, backing[:])
    {
        context.allocator = mem.arena_allocator(&arena)
        values := make_numbers()
        fmt.println(values)
    }
    mem.arena_free_all(&arena)
    fmt.println("arena reset")
}
