# Слайд 11. Модули и пространства имён

defmodule MyApp.Users do
  def find(id) do
    {:ok, %{id: id, name: "User #{id}"}}
  end

  def list do
    [
      %{id: 1, name: "Anna"},
      %{id: 2, name: "Pavel"}
    ]
  end

  def label(user) do
    format_user(user)
  end

  defp format_user(%{id: id, name: name}) do
    "##{id}: #{name}"
  end
end

defmodule MyApp.Accounts do
  def get(id), do: %{id: id, status: :active}
end

defmodule MyApp.Orders do
  def count, do: 3
end

{:ok, user} = MyApp.Users.find(1)
IO.puts(MyApp.Users.label(user))
IO.inspect(MyApp.Users.list(), label: "MyApp.Users")
IO.inspect(MyApp.Accounts.get(10), label: "MyApp.Accounts")
IO.inspect(MyApp.Orders.count(), label: "MyApp.Orders")
