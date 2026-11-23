package main
import "core:fmt"
Stack :: struct($T: typeid, $N: int) where N > 0 {
    data: [N]T,
    count: int,
}
push :: proc(s: ^Stack($T, $N), value: T) -> bool {
    if s.count == N do return false
    s.data[s.count] = value
    s.count += 1
    return true
}
pop :: proc(s: ^Stack($T, $N)) -> (T, bool) {
    if s.count == 0 do return {}, false
    s.count -= 1
    return s.data[s.count], true
}
main :: proc() {
    ints: Stack(int, 2)
    assert(push(&ints, 10))
    assert(push(&ints, 20))
    fmt.println(push(&ints, 30))
    value, ok := pop(&ints)
    fmt.println(value, ok)
    words: Stack(string, 2)
    assert(push(&words, "Odin"))
    word, found := pop(&words)
    fmt.println(word, found)
}
