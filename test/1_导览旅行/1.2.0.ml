#!/usr/bin/env ocaml
(* 1.2 函数和类型推断 *)

#use "topfind"
#thread
#require "core"

open Core

let () = print_endline "hello"

open Printf

let square x =
  x * x
;;

printf "%i\n" (
  square 2
)
;;

printf "%i\n" (
  square (
    square 2
  )
)
;;

let ratio x y =
  float_of_int x /.
  float_of_int y
;;

printf "%F\n" (
  ratio 4 7
);;

let sum_if_true test first second =
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
