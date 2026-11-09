type 'a box = Box of 'a

let count : int box = Box 42
let label : string box = Box "ML"

let unbox (Box x) = x

let () =
  Printf.printf "%d %s\n" (unbox count) (unbox label)

let () = assert (unbox count = 42 && unbox label = "ML")
