# Слайд 2. От выражения к потоку выполнения

age = 20

result =
  if age >= 18 do
    :adult
  else
    :minor
  end

IO.inspect(result, label: "Результат if")

value =
  case {:ok, 42} do
    {:ok, number} -> number * 2
    {:error, reason} -> {:error, reason}
  end

IO.inspect(value, label: "Результат case")
