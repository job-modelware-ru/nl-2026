# Слайд 15. Итоговый пример: Elixir-программа как преобразование данных

defmodule FinalDemo.Student do
  defstruct [:name, :score]
end

defmodule FinalDemo.Report do
  alias FinalDemo.Student

  def build(students) when is_list(students) do
    with {:ok, validated} <- validate(students) do
      passed =
        validated
        |> Enum.filter(&(&1.score >= 60))
        |> Enum.map(& &1.name)

      {:ok, passed}
    end
  end

  defp validate(students) do
    if Enum.all?(students, &valid_student?/1) do
      {:ok, students}
    else
      {:error, :invalid_student}
    end
  end

  defp valid_student?(%Student{name: name, score: score})
       when is_binary(name) and is_integer(score) and score in 0..100,
       do: true

  defp valid_student?(_), do: false
end

students = [
  struct(FinalDemo.Student, name: "Anna", score: 92),
  struct(FinalDemo.Student, name: "Max", score: 54),
  struct(FinalDemo.Student, name: "Eva", score: 87)
]

case FinalDemo.Report.build(students) do
  {:ok, names} -> IO.inspect(names, label: "Сдали")
  {:error, reason} -> IO.inspect(reason, label: "Ошибка")
end
