let first (x, _) = x
(* first : 'a * 'b -> 'a *)

let n = first (42, "answer")
let s = first ("ML", true)

let () =
  Printf.printf "%d %s\n" n s;
  assert (n = 42 && s = "ML")
