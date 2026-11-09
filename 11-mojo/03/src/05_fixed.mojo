# Слайд 5: коллекции фиксированного размера
def main():
    var grid = [0, 0, 0, 0]  # Array[Int, 4] на стеке
    grid[2] = 7
    var zeros = Array[Float64, 3](fill=0.5)
    print(grid, len(grid), zeros)

    var point = (3, "три", 3.0)  # Tuple
    print(point[0], point[1], point[2])

    var found: Optional[Int] = None
    print(found.or_else(-1))
    found = 42
    print(found.value())
