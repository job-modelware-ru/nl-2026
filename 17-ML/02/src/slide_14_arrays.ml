let scores = [|10; 20; 30|]
let same = scores

let () =
  scores.(1) <- 99;
  assert (same.(1) = 99);
  Printf.printf "%d, length %d\n"
    scores.(1) (Array.length scores)
