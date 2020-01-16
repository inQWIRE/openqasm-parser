(lang dune 2.0)
(using menhir 2.0)

(name openQASM)
(source (github inQWIRE/openqasm-parser))
(documentation "https://inQWIRE.github.io/openqasm-parser")
(license MIT)
(authors "Kartik Singhal")
(maintainers "kartiksinghal@gmail.com")

(package
 (name openQASM)
 (synopsis "Parser for OpenQASM (Open Quantum Assembly Language)")
 (description "Parser for OpenQASM (Open Quantum Assembly Language)")
 (depends
  (dune (> 1.5))
  (menhir (>= 20190626))))

(generate_opam_files true)
