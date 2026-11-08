# Слайд 6: коллекции и владение
def total(nums: List[Int]) -> Int:  # imm: читаем без копии
    var s = 0
    for n in nums:
        s += n
    return s

def main():
    var a: List[Int] = [1, 2, 3]
    # var b = a  -> error: 'List[Int]' cannot be implicitly copied
    var b = a.copy()
    b.append(4)
    var c = a^
    # print(a)  -> error: use of uninitialized value 'a'
    for ref x in c:
        x *= 10
    print(b, c, total(c))
