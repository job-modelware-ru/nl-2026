# Слайд 8. Ошибки как данные

defmodule SafeMath do
  def divide(_a, 0), do: {:error, :division_by_zero}
  def divide(a, b), do: {:ok, a / b}
end

for args <- [{10, 2}, {10, 0}] do
  {a, b} = args

  case SafeMath.divide(a, b) do
    {:ok, value} -> IO.puts("#{a} / #{b} = #{value}")
    {:error, reason} -> IO.puts("Ошибка: #{reason}")
  end
end

missing = Path.join(System.tmp_dir!(), "elixir_02_missing_file.txt")
# Гарантируем, что демонстрационный файл действительно отсутствует.
File.rm(missing)

IO.inspect(File.read(missing), label: "Безопасная версия File.read/1")

try do
  File.read!(missing)
rescue
  error in File.Error ->
    IO.puts("File.read!/1 выбросил исключение: #{Exception.message(error)}")
end
