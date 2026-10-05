# Слайд 5. Guards — дополнительные условия

defmodule GuardDemo do
  def classify(x) when is_integer(x) and x > 0, do: :positive_integer
  def classify(0), do: :zero
  def classify(x) when is_integer(x) and x < 0, do: :negative_integer
  def classify(_), do: :other

  def access(%{age: age}) when is_integer(age) and age >= 18, do: :allowed
  def access(%{age: age}) when is_integer(age), do: :denied
  def access(_), do: :invalid_data
end

for value <- [10, 0, -5, 3.14, "10"] do
  IO.inspect(GuardDemo.classify(value), label: "classify(#{inspect(value)})")
end

IO.inspect(GuardDemo.access(%{age: 21}), label: "Возраст 21")
IO.inspect(GuardDemo.access(%{age: 16}), label: "Возраст 16")
IO.inspect(GuardDemo.access(%{age: "21"}), label: "Некорректный возраст")
