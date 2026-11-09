let values = [1; 2; 3; 4]
let evens = List.filter (fun x -> x mod 2 = 0) values
let squares = List.map (fun x -> x * x) evens
let total = List.fold_left ( + ) 0 squares

let () =
  assert (values = [1; 2; 3; 4]);
  assert (squares = [4; 16]);
  Printf.printf "Sum: %d\n" total
