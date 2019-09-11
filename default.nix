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
  {
    neovim-nightly = (import pkgs {config = {}; overlays = [overlay]; }).neovim-nightly;
  }
