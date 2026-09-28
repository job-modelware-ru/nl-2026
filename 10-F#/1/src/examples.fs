// F# examples for presentation "F# - history, launch, types and functions"
// Run with: dotnet fsi fsharp_examples_by_example.fsx

open System
open System.IO

// 1. Minimal syntax and pipeline
let names = [ "Анна"; "Игорь" ]

names
|> List.map (fun n -> $"Привет, {n}")
|> List.iter (printfn "%s")

// 2. Types and variables
let age = 20                 // int
let price = 19.99M           // decimal
let name = "F#"              // string
let point = (10, 20)          // tuple

type User = { Name: string; Age: int }
type Status = Active | Blocked

let user = { Name = "Ada"; Age = 20 }
let status = Active
printfn "User: %A, status: %A, point: %A" user status point

// 3. Operations over types
let total =
    [1; 2; 3; 4]
    |> List.filter (fun x -> x % 2 = 0)
    |> List.map (fun x -> x * x)
    |> List.sum

let message = $"sum = {total}"
printfn "%s" message

// 4. Type conversions
let a = int "42" + 1          // 43
let b = float 10 / 4.0        // 2.5
let c: decimal = decimal 19.99
let s = string c

printfn "a=%d b=%f c=%M s=%s" a b c s

let boxed: obj = box 123
let unboxed = unbox<int> boxed
printfn "unboxed = %d" unboxed

// 5. Scopes and mutability
let x = 10

let result =
    let x = 20                // shadowing: local x hides outer x
    x + 1

printfn "outer x = %d" x       // 10
printfn "result = %d" result   // 21

let mutable counter = 0
counter <- counter + 1
printfn "counter = %d" counter

// 6. Passing values and resource lifetime
let u1 = { Name = "Ada"; Age = 20 }
let u2 = { u1 with Age = 21 }  // new record, u1 is not changed
printfn "u1=%A" u1
printfn "u2=%A" u2

let readFirstLine path =
    use reader = File.OpenText(path)
    reader.ReadLine()

// 7. Function declaration and invocation
let greet person = $"Hello, {person}"

let twice f value = f (f value)
let inc n = n + 1
let twiceResult = twice inc 10
printfn "twiceResult = %d" twiceResult

["F#"; ".NET"]
|> List.map greet
|> List.iter (printfn "%s")

// 8. Function input data: curried and tupled parameters
let add x y = x + y
let add10 = add 10
printfn "add10 5 = %d" (add10 5)

let distance (x1: float, y1: float) (x2: float, y2: float) =
    sqrt ((x2 - x1) ** 2.0 + (y2 - y1) ** 2.0)

printfn "distance = %f" (distance (0.0, 0.0) (3.0, 4.0))

type Printer() =
    member _.Print(text: string, ?prefix: string) =
        let p = defaultArg prefix ""
        printfn "%s%s" p text

Printer().Print("done", prefix = "> ")

// 9. Function output data: tuple and option
let minmax numbers =
    (List.min numbers, List.max numbers)

let tryDivide a b =
    if b = 0 then None
    else Some (a / b)

let lo, hi = minmax [3; 1; 4; 1; 5]
printfn "min=%d max=%d" lo hi

match tryDivide 10 2 with
| Some value -> printfn "10 / 2 = %d" value
| None -> printfn "division by zero"

// 10. Recursion
let rec fact n =
    if n = 0 then 1
    else n * fact (n - 1)

let factTail n =
    let rec loop n acc =
        if n = 0 then acc
        else loop (n - 1) (n * acc)
    loop n 1

printfn "fact 5 = %d" (fact 5)
printfn "factTail 5 = %d" (factTail 5)

// 11. Closures
let makeCounter start =
    let mutable n = start
    fun () ->
        n <- n + 1
        n

let c1 = makeCounter 0
let c2 = makeCounter 100
printfn "c1=%d c1=%d c2=%d" (c1()) (c1()) (c2())

// 12. Discriminated union and pattern matching
type OperationResult =
    | Ok of string
    | Error of string

let handle value =
    match value with
    | Ok text -> printfn "Готово: %s" text
    | Error msg -> printfn "Ошибка: %s" msg

handle (Ok "данные обработаны")
handle (Error "нет доступа")