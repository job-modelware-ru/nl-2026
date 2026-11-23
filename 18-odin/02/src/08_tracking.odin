package main
import "core:fmt"
import "core:mem"
main :: proc() {
    track: mem.Tracking_Allocator
    mem.tracking_allocator_init(
        &track, context.allocator,
    )
    defer mem.tracking_allocator_destroy(&track)
    allocator := mem.tracking_allocator(&track)
    values := make([]int, 3, allocator)
    fmt.println("live:", len(track.allocation_map))
    delete(values, allocator)
    fmt.println(
        "after delete:", len(track.allocation_map),
    )
    assert(len(track.allocation_map) == 0)
}
