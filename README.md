# Skeleton for cli tool written in OCaml

This is a simple command line tool that can be used as a starting point for bigger projects. To build the solution you need to use `dune` build system. For editing and extending the solution I would suggest following set of tools installed:
* `ocaml` >= 4.14
* `opam`
* `merlin` and `tuareg` for Emacs editing
* `utop` for REPL
* `dune` for building and testing the solution

## Build

Issue following commands to build the solution

```sh
~/_ocaml_$ cd ocamlgrep/
~/_ocaml_/ocamlgrep$ dune build
```

## Running

You can execute compiled binary using `dune`, or run the executable directly by providing proper path wihtin the `_build` directory.

```sh
~/_ocaml_/ocamlgrep$ cat bin/main.ml | dune exec ocamlgrep
  4:                               
  1:     In_channel.stdin
  1:     ~f:Counter.touch
  1:     ~init:Counter.empty
  1:   In_channel.fold_lines
  1:   build_counts ()
  1:   if (Caml.__FILE__ = "//toplevel//") then () else main () 
  1:   |> (fun l -> List.take l 10)
  1:   |> Counter.to_list
  1:   |> List.iter ~f:(fun (line, count) -> printf "%3d: %s\n" count line)

```

## References

The code in this example is based on the code from "Real World OCaml" book.