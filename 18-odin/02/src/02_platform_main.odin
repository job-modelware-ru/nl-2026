package main
import "core:fmt"
main :: proc() {
    fmt.println(platform_name())
    when ODIN_DEBUG {
        fmt.println("debug build")
    } else {
        fmt.println("normal build")
    }
}
