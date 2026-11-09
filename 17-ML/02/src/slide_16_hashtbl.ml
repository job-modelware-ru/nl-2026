let scores = Hashtbl.create 8

let () =
  Hashtbl.replace scores "Ada" 10;
  Hashtbl.replace scores "Ada" 20;
  assert (Hashtbl.length scores = 1);
  match Hashtbl.find_opt scores "Ada" with
  | Some n -> Printf.printf "%d\n" n
  | None -> print_endline "No entry"
