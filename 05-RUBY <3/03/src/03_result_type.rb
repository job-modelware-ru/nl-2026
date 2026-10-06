numbers = [1, 2, 3, 4, 5]

result = numbers
  .select(&:even?)
  .map { |n| n * n }

p result
