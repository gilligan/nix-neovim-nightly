{ pkgs ? (import ./nix/sources.nix).nixpkgs
, nvim ? (import ./nix/sources.nix).neovim
}:

let
  overlay = self: super: {
    neovim-nightly = super.neovim.overrideAttrs (old: {
      src = self.fetchFromGitHub {
        owner = nvim.owner;
        repo = nvim.repo;
        rev = nvim.rev;
        sha256 = nvim.sha256;
      };
    });
  };
in
  let
    nixpkgs = (import pkgs {config = {}; overlays = [overlay]; });
  in
  nixpkgs.stdenv.mkDerivation {
    pname = "neovim-nightly";
    version = nvim.rev;
    buildInputs = [nixpkgs.makeWrapper];
    buildCommand = ''
      makeWrapper ${nixpkgs.neovim-nightly}/bin/nvim $out/bin/nvim-nightly
    '';
  }

