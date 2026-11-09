let make_cell () = ref None

let numbers = make_cell ()
let words = make_cell ()

let () =
  numbers := Some 42;
  words := Some "ML";
  assert (!numbers = Some 42);
  assert (!words = Some "ML");
  print_endline "Two independent cells"
