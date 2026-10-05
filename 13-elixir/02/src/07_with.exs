# Слайд 7. with — цепочки успешных операций

defmodule WithDemo do
  def parse_non_negative(text) do
    with {number, ""} <- Integer.parse(String.trim(text)),
         true <- number >= 0 do
      {:ok, number}
    else
      :error -> {:error, :parse_error}
      {_number, rest} when rest != "" -> {:error, :extra_characters}
      false -> {:error, :negative_number}
    end
  end

  def load_number(path) do
    with {:ok, text} <- File.read(path),
         {:ok, number} <- parse_non_negative(text) do
      {:ok, number}
    else
      {:error, reason} -> {:error, reason}
    end
  end
end

path = Path.join(System.tmp_dir!(), "elixir_02_number.txt")
File.write!(path, "42\n")

IO.inspect(WithDemo.load_number(path), label: "Корректный файл")
IO.inspect(WithDemo.parse_non_negative("-10"), label: "Отрицательное число")
IO.inspect(WithDemo.parse_non_negative("12abc"), label: "Лишние символы")

File.rm(path)
