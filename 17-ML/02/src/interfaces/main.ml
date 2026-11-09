let () =
  let count = Counter.next Counter.zero in
  assert (Counter.to_int count = 1);
  Printf.printf "Count: %d\n" (Counter.to_int count)
