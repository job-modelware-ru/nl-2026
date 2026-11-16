package main

import "core:fmt"

User_ID  :: distinct int
Order_ID :: distinct int

main :: proc() {
    user := User_ID(10)
    order := Order_ID(10)
    fmt.println("user:", user, "order:", order)
    fmt.println("same user:", user == User_ID(10))

    // Ошибка компиляции: разные distinct-типы нельзя сравнивать напрямую:
    // fmt.println(user == order)
    fmt.println("explicit conversion:", int(user) == int(order))
}
