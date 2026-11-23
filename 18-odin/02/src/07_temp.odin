package main
import "core:fmt"
import "core:strings"
main :: proc() {
    scratch := fmt.tprintf("item-%d", 7)
    owned := strings.clone(scratch, context.allocator)
    defer delete(owned)
    fmt.println("before reset:", scratch)
    free_all(context.temp_allocator)
    fmt.println("owned copy:", owned)
}
