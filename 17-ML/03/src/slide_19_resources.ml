(* Слайд 19. Явное время жизни файлового ресурса.
   Создаётся только новый временный файл; затем он удаляется. *)
(* BEGIN SLIDE *)
let path = Filename.temp_file "ml-" ".txt"
let () =
  Fun.protect ~finally:(fun () -> Sys.remove path)
    (fun () ->
      Out_channel.with_open_text path (fun oc ->
        output_string oc "hello\n");
      let text = In_channel.with_open_text path
        In_channel.input_all in
      print_string text)
(* END SLIDE *)
(* Ожидаемый вывод: hello
   Каналы закрываются и при возврате, и при исключении callback.
   Fun.protect удаляет временный файл при выходе из callback.
   Это не обещание обработки аварийного завершения процесса. *)
