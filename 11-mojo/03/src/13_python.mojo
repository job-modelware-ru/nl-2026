# Слайд 13: Python из Mojo
from std.python import Python

def main() raises:
    var stats = Python.import_module("statistics")
    var data = Python.list(3, 1, 4, 1, 5, 9, 2, 6)
    var mean = Float64(py=stats.mean(data))  # -> Float64
    print("mean =", mean, "median =", stats.median(data))

    var dt = Python.import_module("datetime")
    print(dt.date(2026, 11, 1).strftime("%A, %d %B"))

    var total = Int(py=Python.evaluate("sum(range(101))"))
    print("sum =", total)
