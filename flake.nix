{
  description = "A flake for the development of Verzod";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        nodejs = pkgs.nodejs_24;
        pnpm = pkgs.pnpm_10;
      in
        {
          devShells.default = pkgs.mkShell {
            buildInputs = [
              nodejs
              pnpm
            ];
          };
        }
    );
}
