(lang dune 2.1)
(using menhir 2.0)

(name openqasm-parser)
(source (github k4rtik/openqasm-parser))
(license ISC)
(authors "Kartik Singhal")
(maintainers "kartiksinghal@gmail.com")

(package
 (name openqasm-parser)
 (synopsis "Parser for OpenQASM (Open Quantum Assembly Language)")
 (description "Parser for OpenQASM (Open Quantum Assembly Language)")
 (depends
  (dune (> 1.5))
  (menhir (>= 20190626))))

(generate_opam_files true)
