(* Слайд 4. Два домена вычисляют независимые части суммы.
   OCaml 5.4; см. команды сборки в README.md. *)
(* BEGIN SLIDE *)
let sum first last =
  let total = ref 0 in
  for n = first to last do
    total := !total + n
  done;
  !total
let d = Domain.spawn (fun () -> sum 1 500)
let right = sum 501 1_000
let total = Domain.join d + right
let () = Printf.printf "sum = %d\n" total
(* END SLIDE *)
(* Ожидаемый вывод: sum = 500500
   Размер задачи выбран для наглядности, не для измерения ускорения.
   Каждый вызов sum создаёт собственный ref, общего счётчика нет. *)
