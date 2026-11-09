(* Слайд 12. Тип выражения фиксирует тип его результата. *)
(* BEGIN SLIDE *)
type _ expr =
  | Int : int -> int expr
  | Bool : bool -> bool expr
  | Add : int expr * int expr -> int expr
let rec eval : type a. a expr -> a = function
  | Int n -> n
  | Bool b -> b
  | Add (x, y) -> eval x + eval y
let expression = Add (Int 20, Int 22)
let () = Printf.printf "%d\n" (eval expression)
(* END SLIDE *)
let () = Printf.printf "%b\n" (eval (Bool true))
(* Ожидаемый вывод:
   42
   true
   Add (Int 1, Bool true) — ошибка типов. Неверный пример
   намеренно оставлен комментарием. *)
