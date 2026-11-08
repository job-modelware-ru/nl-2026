# Слайд 4: Dict и Set
from std.collections import Set

def main() raises:
    var ages = {"A": 20, "B": 25}  # Dict[String, Int]
    ages["C"] = 22
    _ = ages.pop("A")
    print(ages["B"], "A" in ages)
    print(ages.get("D").or_else(-1))
    for e in ages.items():
        print(e.key, "->", e.value)

    var a: Set[Int] = {1, 2, 3}
    var b: Set[Int] = {2, 3, 4}
    print(a | b, a & b, a - b)
