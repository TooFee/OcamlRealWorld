#!/usr/bin/env ocaml
#use "topfind"
#thread
#require "core"

open Core

let () = print_endline "hello"

open Printf

let square x = x * x;;

printf "%i\n" (square 2);;
printf "%i\n" (square (square 2));;

let ratio x y =
  float_of_int x /. float_of_int y
;;

printf "%F\n" (ratio 3 5);;
