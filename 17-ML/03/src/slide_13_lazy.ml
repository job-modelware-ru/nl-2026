(* Слайд 13. Отложенное вычисление с запоминанием результата.
   Последовательный пример: конкурентный force требует защиты. *)
(* BEGIN SLIDE *)
let calls = ref 0
let answer = lazy (incr calls; 21 * 2)
let first = Lazy.force answer
let second = Lazy.force answer
let () =
  Printf.printf "%d %d; calls = %d\n"
    first second !calls
(* END SLIDE *)
(* Ожидаемый вывод: 42 42; calls = 1 *)
