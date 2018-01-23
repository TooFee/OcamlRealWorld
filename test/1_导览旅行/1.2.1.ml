#!/usr/bin/env ocaml
(* 类型推断 *)

open Printf

let sum_if_true
  ( test : int -> bool )
  ( first : int )
  ( second : int )
: int =
  (
    if test first
    then first
    else 0
  ) + (
    if test second
    then second
    else 0
  )
;;

let even x =
  x mod 2 = 0
;;

printf "%i\n" (
  sum_if_true even 3 4
)
;;

printf "%i\n" (
  sum_if_true even 2 4
)
;;
