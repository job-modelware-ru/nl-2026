(* Слайд 7. Вычисление как преобразование значений. OCaml 5.4. *)
(* BEGIN SLIDE *)
let scores = [3; -1; 5; 0]
let sum_positive xs =
  List.fold_left
    (fun acc x -> if x > 0 then acc + x else acc)
    0 xs
let () = Printf.printf "%d\n" (sum_positive scores)
(* END SLIDE *)
(* Ожидаемый вывод: 8
   Функция sum_positive не изменяет xs; печать вынесена наружу. *)
