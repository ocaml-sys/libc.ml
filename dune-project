(lang dune 3.12)

(name libc)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name libc)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   (config (>= "0.0.1"))
   ocaml
   dune
          )
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
