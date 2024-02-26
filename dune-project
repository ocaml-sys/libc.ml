(lang dune 3.12)

(name libc)

(generate_opam_files true)

(source
 (github ocaml-sys/libc.ml))

(authors "Leandro Ostera <leandro@abstractmachines.dev>")

(maintainers "Leandro Ostera <leandro@abstractmachines.dev>")

(license MIT)

(package
 (name libc)
 (synopsis "Raw definitions and bindings to platforms system libraries")
 (description "`libc provides definitions (and in the future bindings) to easily interoperate with C code (or C-like code) on several platforms, and it does this with a target and architecture aware API.")
 (depends 
   (config (= "0.0.2"))
   (ocaml (>= "5.1.1"))
   dune)
 (tags
  (libc platform bindings "raw bindings")))
