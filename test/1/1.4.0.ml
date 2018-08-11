#!/usr/bin/env ocaml

type point2d = {
  x: float;
  y: float
}
;;

let p = {
  x = 3.;
  y = -4.
}
;;

let magnitude {
  x = x_pos;
  y = y_pos
} =
  sqrt (x_pos ** 2. +. y_pos ** 2.)
;;

let magnitude {
  x;
  y
} =
  sqrt (x ** 2. +. y ** 2.)
;;

let distance v1 v2 =
  magnitude {
    x = v1.x -. v2.x;
    y = v1.y -. v2.y
  }
;;
