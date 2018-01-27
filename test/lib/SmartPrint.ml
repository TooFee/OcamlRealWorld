#!/usr/bin/env ocaml
#use "topfind"
#thread
#require "smart_print"

open SmartPrint
;;

to_stdout 25 2 (
  !^ "hello word" ^^
  newline
)
;;

to_stdout 6 2 (
  !^ "hello" ^^
  !^ "word" ^^
  newline
)
;;

to_stdout 6 2 (
  !^ "hello" ^^
  !^ "word" ^^
  newline
)
;;

to_stdout 25 2 (
  !^ "hello" ^^
  space ^^
  space ^^
  !^ "word" ^^
  space ^^
  newline
)
;;

to_stdout 25 2 (
  words "A long string with many spaces." ^^
  newline
)
;;

type t =
  | Var of string
  | App of t * t
  | Fun of string * t
  | Let of string * t * t
  | Tuple of t list
;;

let rec pp
  (e : t)
: SmartPrint.t =
  match e with
  | Var x -> !^ x
  | App (e1, e2) ->
    !^ "(" ^-^
    pp e1 ^^
    pp e2 ^-^
    !^ ")"
  | _ -> failwith "TODO"
;;

to_stdout 25 2 (
  pp (Var "x") ^^
  newline
)
;;

to_stdout 25 2 (
  pp (
    App (
      Var "f",
      Var "x"
    )
  ) ^^
  newline
)
;;

to_stdout 25 2 (
  pp (
    App (
      Var "fdsgoklkmeee",
      App (
        Var "ffedz",
        Var "xetgred"
      )
    )
  ) ^^
  newline
)
;;

let rec pp
  (e : t)
: SmartPrint.t =
  match e with
  | Var x -> !^ x
  | App (e1, e2) ->
    nest (
      !^ "(" ^-^
      pp e1 ^^
      pp e2 ^-^
      !^ ")"
    )
  | _ -> failwith "TODO"
;;

to_stdout 25 2 (
  pp (
    App (
      Var "fdsgoklkmeee",
      App (
        Var "ffedz",
        Var "xetgred"
      )
    )
  ) ^^
  newline
)
;;
