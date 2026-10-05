# Слайд 12. alias, import, require и use

defmodule Demo.Users do
  def names, do: ["Anna", "Pavel", "Eva"]
end

defmodule Demo.Macros do
  defmacro twice(expression) do
    quote do
      unquote(expression) * 2
    end
  end
end

defmodule Demo.Feature do
  defmacro __using__(_opts) do
    quote do
      def feature_enabled?, do: true
    end
  end
end

defmodule Demo.Client do
  alias Demo.Users
  import Enum, only: [map: 2]
  require Demo.Macros
  use Demo.Feature

  def run do
    upper_names = map(Users.names(), &String.upcase/1)

    %{
      names: upper_names,
      doubled: Demo.Macros.twice(21),
      feature_enabled: feature_enabled?()
    }
  end
end

IO.inspect(Demo.Client.run(), label: "alias / import / require / use")
