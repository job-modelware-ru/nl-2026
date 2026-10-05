# Слайд 14. Protocols, behaviours и обобщённые типы

defprotocol MyFormatter do
  def format(data)
end

defimpl MyFormatter, for: Integer do
  def format(data), do: "Число: #{data}"
end

defimpl MyFormatter, for: List do
  def format(data), do: "Список: #{Enum.join(data, ", ")}"
end

defmodule Repository do
  @callback get(integer()) :: {:ok, map()} | {:error, :not_found}
end

defmodule MemoryRepository do
  @behaviour Repository

  @impl true
  def get(1), do: {:ok, %{id: 1, name: "Anna"}}
  def get(_id), do: {:error, :not_found}
end

IO.puts(MyFormatter.format(42))
IO.puts(MyFormatter.format(["Elixir", "BEAM", "OTP"]))

IO.inspect(MemoryRepository.get(1), label: "Behaviour: найдено")
IO.inspect(MemoryRepository.get(100), label: "Behaviour: не найдено")
