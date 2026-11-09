exception Invalid_score of int

let validate n =
  if n < 0 then raise (Invalid_score n) else n

let () =
  try Printf.printf "%d\n" (validate (-1)) with
  | Invalid_score n ->
      Printf.printf "Invalid score: %d\n" n

let () = assert (validate 5 = 5)
