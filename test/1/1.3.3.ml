#!/usr/bin/env ocaml

#use "topfind"
#thread

open Printf

let divide x y =
  if y = 0 then None else Some (x/y)
;;

(*

printf "%d\n" (
  divide 10 2
)
;;

*)

#require "core"
open Core

let log_entry maybe_time message =
  let time =
    match maybe_time with
    | Some x -> x
    | None -> Time.now ()
  in
  Time.to_sec_string
    ~zone: Time.Zone.utc
    time
    ^ " -- " ^ message
;;

printf "%s\n" (
  log_entry (Some Time.epoch) "A long long time ago"
)
;;

printf "%s\n" (
  log_entry None "Up to the minute"
)
;;
