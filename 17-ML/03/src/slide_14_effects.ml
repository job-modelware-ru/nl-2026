(* Слайд 14. Глубокий обработчик эффекта; синтаксис OCaml 5.4.
   Этот синтаксис обработчиков появился в OCaml 5.3. *)
(* BEGIN SLIDE *)
type _ Effect.t += Ask : int Effect.t
let answer =
  try Effect.perform Ask + 1 with
  | effect Ask, k -> Effect.Deep.continue k 41
let () = Printf.printf "%d\n" answer
(* END SLIDE *)
(* Ожидаемый вывод: 42
   Обработчик возвращает 41 в место perform, затем выполняется + 1.
   Продолжение k здесь возобновляется ровно один раз.
   Без обработчика возникнет Effect.Unhandled. *)
