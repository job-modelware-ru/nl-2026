# Слайд 3. Условия: if, unless и cond

score = 82

status =
  cond do
    score >= 90 -> :excellent
    score >= 70 -> :good
    true -> :retry
  end

IO.inspect(status, label: "cond")

if score >= 60 do
  IO.puts("Экзамен сдан")
end

unless score < 60 do
  IO.puts("Пересдача не требуется")
end

IO.inspect([false, nil], label: "Falsy значения в Elixir")
