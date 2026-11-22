package main

import "core:fmt"
import "core:thread"

Thread_Data :: struct {
    count: int,
    result: int,
}

worker :: proc(t: ^thread.Thread) {
    data := (^Thread_Data)(t.data)
    for i in 1..=data.count {
        data.result += i
    }
}

main :: proc() {
    data := Thread_Data{count = 100}
    t := thread.create(worker)
    assert(t != nil)
    t.data = &data
    thread.start(t)
    thread.join(t) // После join можно читать результат
    thread.destroy(t)
    fmt.println("sum 1..100:", data.result)
    assert(data.result == 5050)
}
