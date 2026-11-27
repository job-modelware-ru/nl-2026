// Слайд 16. Spread-оператор
// Ожидаемый вывод:
//   [6, 11]
//   [0, 1, 2, 3, 4]
//   [1:a, 2:b, 3:c, 4:d, 5:e]

def sizes = ["string", "long string"]*.size()
println sizes

def x = [2, 3]
def y = [0, 1, *x, 4]
println y

def a = [3: "c", 4: "d"]
def b = [1: "a", 2: "b", *:a, 5: "e"]
println b
