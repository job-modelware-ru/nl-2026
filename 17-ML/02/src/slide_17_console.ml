let () =
  print_endline "Enter an integer:";
  match In_channel.input_line stdin with
  | None -> prerr_endline "End of input"
  | Some line ->
      match int_of_string_opt line with
      | Some n -> Printf.printf "Value: %d\n" n
      | None -> prerr_endline "Invalid integer"
