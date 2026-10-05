# Слайд 6. Итерация без классических циклов

numbers = [1, 2, 3, 4, 5, 6]

doubled = Enum.map(numbers, fn x -> x * 2 end)
evens = Enum.filter(numbers, fn x -> rem(x, 2) == 0 end)
sum = Enum.reduce(numbers, 0, fn x, acc -> x + acc end)

squares = for x <- 1..5, x * x < 20, do: x * x

IO.inspect(numbers, label: "Исходные данные")
IO.inspect(doubled, label: "Enum.map")
IO.inspect(evens, label: "Enum.filter")
IO.inspect(sum, label: "Enum.reduce")
IO.inspect(squares, label: "Comprehension")

pipeline_result =
  numbers
  |> Enum.filter(&(&1 > 2))
  |> Enum.map(&(&1 * &1))
  |> Enum.sum()

IO.inspect(pipeline_result, label: "Pipeline")
