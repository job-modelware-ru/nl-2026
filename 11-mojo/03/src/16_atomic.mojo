# Слайд 16: общие данные - гонка и Atomic
from max.algorithm import parallelize
from std.atomic import Atomic

comptime TASKS = 1000
comptime STEPS = 1000

def main():
    var plain = 0
    var counter = Atomic[Int](0)

    def work(i: Int) {mut plain, mut counter}:
        for _ in range(STEPS):
            plain += 1                # гонка
            _ = counter.fetch_add(1)  # атомарно

    parallelize(work, TASKS)
    print("ожидали:", TASKS * STEPS)
    print("Int:    ", plain)
    print("Atomic: ", counter.load())
