# Слайд 15: parallelize - π как интеграл 4 / (1 + x²) на [0, 1]
from max.algorithm import parallelize
from std.sys import num_logical_cores
from std.time import perf_counter

comptime N = 200_000_000
comptime STEP = 1.0 / Float64(N)

def partial(first: Int, stride: Int) -> Float64:
    var s = 0.0
    for i in range(first, N, stride):  # first, first + stride, ...
        var x = (Float64(i) + 0.5) * STEP
        s += 4.0 / (1.0 + x * x)
    return s * STEP

def pi_parallel() -> Float64:
    var workers = num_logical_cores()
    var parts = List[Float64](length=workers, fill=0)

    def work(k: Int) {mut parts, imm workers}:
        parts[k] = partial(k, workers)  # у каждого потока своя ячейка

    parallelize(work, workers)
    var total = 0.0
    for part in parts:
        total += part
    return total

def main():
    print("ядер:", num_logical_cores())
    var t = perf_counter()
    var a = partial(0, 1)
    print("1 поток:    ", Int((perf_counter() - t) * 1000), "мс  π =", a)
    t = perf_counter()
    var b = pi_parallel()
    print("parallelize:", Int((perf_counter() - t) * 1000), "мс  π =", b)
