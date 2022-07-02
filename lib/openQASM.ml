open Printf
open Lexing

(* Error handling adapted from Real World OCaml *)
let print_position outx lexbuf =
  let pos = lexbuf.lex_curr_p in
  fprintf outx "%s:%d:%d" pos.pos_fname
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)

(* core parsing routine *)
let get_ast f =
  let ic = open_in f in
  let lexbuf = Lexing.from_channel ic in
  let res = (try Parser.mainprogram Lexer.token lexbuf with
            | Lexer.SyntaxError msg ->
                fprintf stderr "%a: %s\n" print_position lexbuf msg;
                []
            | Parser.Error ->
                fprintf stderr "%a: syntax error\n" print_position lexbuf;
                close_in ic;
                exit (-1)) in
  close_in ic;
  res

module AST = AST
