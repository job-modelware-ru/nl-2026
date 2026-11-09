# Слайд 3: List[T]
def main():
    var nums: List[Int] = [5, 2, 8, 1]  # без типа [..] - Array
    nums.append(9)
    nums.insert(0, 7)
    var last = nums.pop()
    print(nums, "len =", len(nums), "pop ->", last)
    print(8 in nums, nums[len(nums) - 1])  # nums[-1] - ошибка

    sort(nums)
    print(nums)
    print(nums[1:3])  # срез - Span, работает без копии, как просмотр

    var words: List[String] = ["mojo", "is", "fast"]
    print(" ".join(words))
