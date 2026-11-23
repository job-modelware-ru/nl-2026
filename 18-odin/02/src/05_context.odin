package main
import "core:fmt"
import "core:mem"
report :: proc() {
    fmt.println("callee:", context.user_index)
}
make_counter :: proc(allocator: mem.Allocator) -> ^int {
    return new(int, allocator)
}
main :: proc() {
    context.user_index = 10
    {
        context.user_index = 20
        report()
    }
    fmt.println("caller:", context.user_index)
    n := make_counter(context.allocator)
    defer free(n)
    n^ = 42
    fmt.println("counter:", n^)
}
