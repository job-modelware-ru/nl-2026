let write path text =
  Out_channel.with_open_bin path (fun channel ->
    output_string channel text)

let read path =
  In_channel.with_open_bin path In_channel.input_all

let () =
  let path = Filename.temp_file "ml_files_" ".txt" in
  Fun.protect
    ~finally:(fun () ->
      try Sys.remove path with Sys_error _ -> ())
    (fun () ->
      write path "ML\n";
      let text = read path in
      assert (text = "ML\n");
      print_string text)
