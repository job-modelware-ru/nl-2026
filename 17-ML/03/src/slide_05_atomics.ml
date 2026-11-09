(* Слайд 5. Общий счётчик и атомарная операция. OCaml 5.4. *)
(* BEGIN SLIDE *)
let count = Atomic.make 0
let increment () =
  for _ = 1 to 1_000 do Atomic.incr count done
let d = Domain.spawn increment
let () = increment ()
let () = Domain.join d
let () = Printf.printf "count = %d\n"
  (Atomic.get count)
(* END SLIDE *)
(* Ожидаемый вывод: count = 2000
   Atomic.set count (Atomic.get count + 1) не является
   одной атомарной операцией и не заменяет Atomic.incr. *)
