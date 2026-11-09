let average a b = (a +. b) /. 2.

let () =
  Printexc.record_backtrace true;
  assert (average 2. 4. = 3.);
  print_endline "Invariant holds"
