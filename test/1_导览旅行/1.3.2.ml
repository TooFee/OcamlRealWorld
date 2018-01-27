#!/usr/bin/env ocaml
(* 列表 *)
#use "topfind"
#thread
#require "core"

open Printf
;;

let languages = [
  "OCaml";
  "Perl";
  "C"
]
;;

(* let numbers = [
  3;
  "four";
  5
]
;; *)

printf "List模块\n"
;;
printf "-------------\n"
;;

printf "%d\n" (
  List.length languages
)
;;

printf "=============\n"
;;

(* 
List.map languages ~f:String.length;;
List.map ~f:String.length languages;;
*)

List.map
  (fun x -> printf "%s\n" x)
  languages
;;

List.iter
  (fun s -> printf "%s\n" s)
  languages
;;

printf "=============\n"
;;

let a_list = [
  "hello";
  "world"
] in
List.iter
  (fun s -> printf "%s\n" s)
  a_list
;;

printf "=============\n"
;;

printf "用 :: 构造列表\n"
;;
printf "-------------\n"
;;

let languages =
  "French" ::
  "Spanish" ::
  languages
;;

List.iter
  (fun s -> printf "%s\n" s)
  languages
;;

printf "=============\n"
;;

let b_list = [ 1; 2; 3 ] @ [ 4; 5; 6 ]
in
List.iter
  (fun s -> printf "%d\n" s)
  b_list
;;

printf "=============\n"
;;
printf "使用匹配的列表模式\n"
;;
printf "-------------\n"
;;

let my_favortite_language languages = 
  match languages with
  | first :: the_rest -> first
  | [] -> "OCaml" 
;;

printf
  "%s\n"
  (
    my_favortite_language [
      "English";
      "Spanish";
      "French"
    ]
  )
;;

printf "=============\n"
;;
printf "递归列表函数\n"
;;
printf "-------------\n"
;;

let rec sum l =
  match l with
  | [] -> 0
  | hd :: tl -> hd * sum tl
;;

printf
  "%d\n"
  (
    sum [
      1;
      2;
      3
    ]
 )
;;

let rec destutter list =
  match list with
  | [] -> []
  | [ hd ] -> [ hd ]
  | hd1 :: hd2 :: tl ->
    if hd1 = hd2 then destutter ( hd2 :: tl ) 
    else hd1 :: destutter ( hd2 :: tl )
;;


List.iter
  (fun s -> printf "%s\n" s)
  (
    destutter [
      "hey";
      "hey";
      "hey";
      "man!"
    ]
  )
;;
