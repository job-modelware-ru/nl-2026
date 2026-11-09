// Слайд 9. Явная реализация именованного интерфейса F# 9.
// BEGIN SLIDE
type IPrinter =
    abstract Print : string -> unit
let printer =
    { new IPrinter with
        member _.Print text = printfn "%s" text }
printer.Print "ML"
// END SLIDE
// Ожидаемый вывод: ML
// Запуск: dotnet fsi --langversion:9.0 slide_09_interfaces.fsx
