
// ==========================================
// Слайд 3: Условные конструкции (if...then...else)
// ==========================================
let grade score = 
    if score >= 90 then "A" 
    elif score >= 75 then "B" 
    elif score >= 60 then "C" 
    else "F"

let result = grade 82 
printfn "%s" result


// ==========================================
// Слайд 4: Циклы (for, for...in, while)
// ==========================================
// for ... in 
for name in [ "Ada"; "Don"; "Grace" ] do
    printfn "%s" name 

// while ... do 
let mutable n = 3
while n > 0 do
    printfn "%d" n
    n <- n - 1 

// for ... to 
for i = 1 to 3 do
    printfn "%d" i


// ==========================================
// Слайд 5: Итераторы и блоки (seq)
// ==========================================
let squares =
    seq {
        for i in 1 .. 1_000_000 do
            i * i
    }
squares |> Seq.take 3 |> Seq.iter (printfn "%d")


// ==========================================
// Слайд 6: Исключения (try...with)
// ==========================================
let safeDivide x y = 
    try Some (x / y) 
    with 
    | :? System.DivideByZeroException -> None

let resultDiv = safeDivide 10 0


// ==========================================
// Слайд 7: finally и assert
// ==========================================
// try ... finally 
let stream = System.IO.File.OpenRead "data.bin" 
try 
    printfn "bytes = %d" stream.Length 
finally 
    stream.Dispose() 

// assert 
let discount percent price = 
    assert (percent >= 0 && percent <= 100) 
    price * (100.0 - float percent) / 100.0 


// ==========================================
// Слайд 8: Пространства имён и модули
// ==========================================
namespace MyApp 

module Pricing = 
    let addVat rate amount = amount * (1.0 + rate) 

module Validation = 
    let isPositive x = x > 0


// ==========================================
// Слайд 9: Импорт и экспорт (.fsi signature)
// ==========================================
// Реализация (MathTools.fs)
module MathTools 
let private normalize x = abs x 
let clamp x =
    min 100 (normalize x) 

// Сигнатура (MathTools.fsi)
module MathTools 
val clamp : int -> int


// ==========================================
// Слайд 11: Обобщенные функции (Автоматическая генерализация)
// ==========================================
let identity x = x
// val identity: 'a -> 'a

let pair x y = (x, y)
// val pair: 'a -> 'b -> 'a * 'b

identity 42
identity "F#"


// ==========================================
// Слайд 12: Явная декларация и инстанцирование generic-типов
// ==========================================
// Generic class 
type Box<'T>(value: 'T) = 
    member _.Value = value 

let numbers = Box<int>(42) 
let text = Box<string>("F#") 
printfn "%d" numbers.Value 
printfn "%s" text.Value 

// Generic record 
type Pair<'A, 'B> = { 
    First: 'A 
    Second: 'B 
} 

let p : Pair<int, string> = 
    { First = 1; Second = "one" }


// ==========================================
// Слайд 13: Ограничения generic-параметров (Constraints)
// ==========================================
let exceptionMessage<'T when 'T : System.Exception>
    (ex: 'T) =
    ex.Message
