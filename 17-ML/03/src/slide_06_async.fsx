// Слайд 6. Дополнительный пример F# 9: два async-вычисления.
// Запуск: dotnet fsi --langversion:9.0 slide_06_async.fsx
let job n = async {
    do! Async.Sleep 10
    return n * n
}
let results =
    [job 3; job 4]
    |> Async.Parallel
    |> Async.RunSynchronously
printfn "sum = %d" (Array.sum results)
// Ожидаемый вывод: sum = 25
// Async.Sleep освобождает поток во время ожидания.
// Пример показывает перекрытие ожиданий, а не ускорение CPU.
