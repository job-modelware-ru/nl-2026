package main
import "core:fmt"
Permission :: enum { Read, Write, Execute }
main :: proc() {
    labels := [Permission]string{
        .Read = "read",
        .Write = "write",
        .Execute = "execute",
    }
    user: bit_set[Permission] = {.Read, .Write}
    required: bit_set[Permission] = {.Read, .Execute}
    common := user & required
    missing := required - user
    fmt.println(labels[.Read], .Read in user)
    fmt.println(.Read in common, .Execute in missing)
    fmt.println(card(user))
}
