let parse_count s =
  match int_of_string_opt s with
  | None -> Error "Not an integer"
  | Some n when n < 0 -> Error "Negative count"
  | Some n -> Ok n

let () =
  match parse_count "12" with
  | Ok n -> Printf.printf "Count: %d\n" n
  | Error message -> prerr_endline message

let () =
  assert (parse_count "12" = Ok 12);
  assert (parse_count "abc" = Error "Not an integer");
  assert (parse_count "-1" = Error "Negative count")
