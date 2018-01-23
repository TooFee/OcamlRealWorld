#!/usr/bin/env ocaml
open Printf;;

let a = 3 + 4;;
printf "3 + 4 = %i\n" a;;

let b = 8 / 3;;
printf "8 / 3 = %i\n" b;;

let c = 3.5 +. 6.;;
printf "3.5 + 6. = %F\n" c;;

let d = 30_000_000 / 300_000;;
printf "30_000_000 / 300_000 = %i\n" d;;

let e = sqrt 9.;;
printf "sqrt 9. = %F\n" e;;

printf "\n";;
printf "============\n";;

let x = 3 + 4;;
let y = x + x;;
printf "y = %i\n" y;;

let x7 = 3 + 4;;
printf "x7 = %i\n" x7;;

let x_plus_y = x + y;;
printf "x_plus_y = %i\n" x_plus_y;;

let x' = x + 1;;
printf "x' = %i\n" x';;

let _x' =  x' + x';;
printf "_x' = %i\n" _x';;
