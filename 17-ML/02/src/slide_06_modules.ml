module Score = struct
  let maximum = 100
  let clamp x = max 0 (min maximum x)
end

let () =
  let open Score in
  Printf.printf "%d / %d\n" (clamp 120) maximum

let () = assert (Score.clamp (-1) = 0)
