#!/usr/bin/env ocaml
(* 推断泛型类型 *)

open Printf

let first_if_true
  test
  x
  y
=
  if test x
  then x
  else y
;;

let long_string
  s
=
  String.length s > 6
;;

printf "%s\n" (
  first_if_true
    long_string
    "short"
    "loooooooog"
)
;;

let big_number
  x
=
  x > 3
;;

printf "%d\n" (
  first_if_true
    big_number
    4
    3
)
;;
