(* Слайд 11. Обычный и полиморфный варианты. *)
(* BEGIN SLIDE *)
type light = Red | Green
let closed = function Red -> "stop" | Green -> "go"
let flexible = function
  | `Red -> "stop"
  | `Green -> "go"
let () =
  print_endline (closed Red);
  print_endline (flexible `Green)
(* END SLIDE *)
(* Ожидаемый вывод:
   stop
   go
   flexible имеет тип [< `Green | `Red ] -> string.
   Произвольный тег `Blue эта функция не принимает. *)
