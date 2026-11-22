func sum(_ n: Int) -> Int {
    precondition((0...100).contains(n))
    if n == 0 { return 0 }
    return n + sum(n - 1)
}
print(sum(3))
