(* Слайд 8. Класс, объект и изменяемое внутреннее состояние. *)
(* BEGIN SLIDE *)
class counter =
  object
    val mutable value = 0
    method get = value
    method incr = value <- value + 1
  end
let c = new counter
let () =
  c#incr;
  Printf.printf "%d\n" c#get
(* END SLIDE *)
(* Ожидаемый вывод: 1
   value — поле экземпляра; get и incr — публичные методы.
   Поле value недоступно через синтаксис вызова метода c#value. *)
