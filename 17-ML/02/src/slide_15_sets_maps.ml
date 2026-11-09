module Names = Set.Make (String)
module Scores = Map.Make (String)

let names = Names.of_list ["Ada"; "Ada"; "Bob"]
let old = Scores.singleton "Ada" 10
let updated = Scores.add "Ada" 20 old

let () =
  assert (Names.cardinal names = 2);
  assert (Scores.find "Ada" old = 10);
  Printf.printf "%d\n" (Scores.find "Ada" updated)
