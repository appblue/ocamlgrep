open Base
open Base.String
open Stdio

(* local utils library *)
open Utils

let build_counts () =
  In_channel.fold_lines
    In_channel.stdin
    ~init:Counter.empty
    ~f:Counter.touch

let main () =
  build_counts ()
  |> Counter.to_list
  |> List.sort ~compare:(fun (_, x) (_, y) -> Int.descending x y)
  |> (fun l -> List.take l 10)
  |> List.iter ~f:(fun (line, count) -> printf "%3d: %s\n" count line);
  0

let () =
  Caml.exit
    (if (Caml.__FILE__ = "//toplevel//") then 0 else main ())
