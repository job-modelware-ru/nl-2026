let read_first path =
  let channel = open_in path in
  Fun.protect
    ~finally:(fun () -> close_in_noerr channel)
    (fun () -> input_line channel)

let () =
  let path = Filename.temp_file "ml_cleanup_" ".txt" in
  Fun.protect
    ~finally:(fun () ->
      try Sys.remove path with Sys_error _ -> ())
    (fun () ->
      try
        ignore (read_first path);
        failwith "Expected End_of_file for an empty file"
      with End_of_file ->
        print_endline "Empty input handled after cleanup")
