#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "openqasm-parser" @@ fun c ->
  Ok [ Pkg.mllib "src/openqasm-parser.mllib";
       Pkg.test "test/test"; ]
