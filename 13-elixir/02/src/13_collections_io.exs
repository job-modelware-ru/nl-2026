# Слайд 13. Коллекции и ввод-вывод

list = [1, 2, 3]
tuple = {:ok, 42, "user"}
map = %{name: "Elixir", year: 2011}
set = MapSet.new([1, 2, 2, 3])
opts = [port: 4000, host: "localhost"]

IO.inspect(list, label: "List")
IO.inspect(tuple, label: "Tuple")
IO.inspect(map, label: "Map")
IO.inspect(set, label: "MapSet")
IO.inspect(opts, label: "Keyword List")

name =
  case System.argv() do
    ["--interactive" | _] ->
      case IO.gets("Имя: ") do
        nil -> ""
        input -> String.trim(input)
      end

    _ ->
      "Anna"
  end

path = Path.join(System.tmp_dir!(), "elixir_02_name.txt")
File.write!(path, name)

{:ok, text} = File.read(path)
IO.puts("Прочитано из файла: #{text}")

File.rm(path)
