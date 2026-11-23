package main
import "core:fmt"
Particle :: struct { x, velocity: f32 }
main :: proc() {
    aos := [2]Particle{{1, 10}, {2, 20}}
    soa: #soa[2]Particle
    for p, i in aos do soa[i] = p
    for &p in aos do p.x += p.velocity
    for i in 0..<len(soa) {
        soa.x[i] += soa.velocity[i]
    }
    fmt.println(aos[0].x, aos[1].x)
    fmt.println(soa.x[0], soa.x[1])
}
