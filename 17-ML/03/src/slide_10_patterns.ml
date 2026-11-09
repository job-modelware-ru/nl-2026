(* Слайд 10. Вложенные образцы, when и альтернативы. *)
(* BEGIN SLIDE *)
let classify = function
  | Some (x, y) when x = y -> "equal"
  | Some (0, _) | Some (_, 0) -> "on axis"
  | Some _ -> "different"
  | None -> "missing"
let () =
  List.iter (fun x -> print_endline (classify x))
    [Some (2, 2); Some (0, 3); Some (1, 4); None]
(* END SLIDE *)
(* Ожидаемый вывод:
   equal
   on axis
   different
   missing
   Some (0, 0) попадает в первую ветвь и даёт equal. *)
