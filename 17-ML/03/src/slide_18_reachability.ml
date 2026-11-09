(* Слайд 18. Две функции сохраняют доступ к одному массиву. *)
(* BEGIN SLIDE *)
let make_access () =
  let data = [|0; 1; 2|] in
  ((fun () -> data.(0)), (fun x -> data.(0) <- x))
let read, write = make_access ()
let () = write 7
let () = Printf.printf "%d\n" (read ())
(* END SLIDE *)
(* Ожидаемый вывод: 7
   Массив остаётся доступным через замыкания после возврата
   make_access. Изменение через write наблюдается через read. *)
