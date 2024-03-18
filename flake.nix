{
  description = "Raw bindings to platform APIs for OCaml.";
  inputs.config.url = "github:ocaml-sys/config.ml";
  inputs.config.inputs.nixpkgs.follows = "nixpkgs";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
          inherit (pkgs) ocamlPackages mkShell;
          inherit (ocamlPackages) buildDunePackage;
          name = "libc";
          version = "0.0.1";
        in
          {
            devShells = {
              default = mkShell {
                buildInputs = [ ocamlPackages.utop ];
                inputsFrom = [ self'.packages.default ];
              };
            };

            packages = {
              default = buildDunePackage {
                inherit version;
                pname = name;
                propagatedBuildInputs = [
                  inputs'.config.packages.default
                ];
                src = ./.;
              };
            };
          };
    };
}
