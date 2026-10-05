# Слайд 4. case и pattern matching

defmodule CaseDemo do
  def handle(result) do
    case result do
      {:ok, value} -> "Успех: #{value}"
      {:error, reason} -> "Ошибка: #{reason}"
      _ -> "Неизвестный результат"
    end
  end
end

IO.puts(CaseDemo.handle({:ok, 42}))
IO.puts(CaseDemo.handle({:error, :not_found}))
IO.puts(CaseDemo.handle(:unknown))

user = %{name: "Anna", age: 20}

case user do
  %{name: name, age: age} when age >= 18 ->
    IO.puts("#{name}: совершеннолетний пользователь")

  %{name: name} ->
    IO.puts("#{name}: несовершеннолетний пользователь")
end
