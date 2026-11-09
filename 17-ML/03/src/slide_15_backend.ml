(* Слайд 15. Один исходник, два способа компиляции. *)
(* BEGIN SLIDE *)
let backend =
  match Sys.backend_type with
  | Sys.Native -> "native"
  | Sys.Bytecode -> "bytecode"
  | Sys.Other name -> name
let () = print_endline backend
(* END SLIDE *)
(* После ocamlc и запуска через ocamlrun: bytecode
   После ocamlopt и запуска бинарного файла: native
   Команды приведены в README.md. *)
