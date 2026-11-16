package main

import "core:fmt"
import "core:c"

// Пример вызова функции из системной C-библиотеки без сборки math.a.
when ODIN_OS == .Windows {
    foreign import libc "system:ucrtbase.lib"
} else when ODIN_OS == .Darwin {
    foreign import libc "system:System.framework"
} else {
    foreign import libc "system:c"
}

foreign libc {
    abs :: proc(n: c.int) -> c.int ---
}

main :: proc() {
    result := abs(-42)
    fmt.println("C abs(-42) =", result) // 42
}
