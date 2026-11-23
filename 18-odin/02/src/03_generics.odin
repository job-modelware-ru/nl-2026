package main
import "core:fmt"
import "base:intrinsics"
identity :: proc(value: $T) -> T {
    return value
}
max_value :: proc($T: typeid, a, b: T) -> T
    where intrinsics.type_is_integer(T) {
    return a if a > b else b
}
main :: proc() {
    fmt.println(identity(42), identity("Odin"))
    fmt.println(max_value(i32, 7, 12))
}
