#!/usr/bin/env ocaml
(* 元组 *)

#use "topfind"
#thread

open Printf

let a_tuple = (
  3,
  "three"
)
;;

let another_tuple = (
  3,
  "four",
  5
)
;;

let (
  x,
  y
) = a_tuple
;;

printf "%d\n" (
  x + String.length y
)
;;

let distance
  ( x1, y1 )
  ( x2, y2 )
=
  sqrt (
    ( x1 -. x2 ) ** 2. +.
    ( y1 -. y2 ) ** 2.
  )
;;

printf "%F\n" (
  distance
    ( 2.1, 3.5 )
    ( 3.2, 4.7 )
)
;;
