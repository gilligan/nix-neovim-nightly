## nix-neovim-nightly

[![Build Status](https://travis-ci.com/gilligan/nix-neovim-nightly.svg?branch=master)](https://travis-ci.com/gilligan/nix-neovim-nightly)

This repository provides a nix package of neovim nightly. If you want to try bleeding edge features like
floating window support and you are using Nix/NixOS you have come to the right place ;-)

### Installation

```
$ nix-env -i -f https://github.com/gilligan/nix-neovim-nightly/tarball/master
```

#### Cachix

You can also make use of [cachix](https://cachix.org) if you want to avoid building anything

```
$ cachix use neovim-nightly
```

### Notes

This build uses the [this nixpkgs fork](https://github.com/rvolosatovs/nixpkgs/tree/feature/nightly-neovim) mentioned
in [this nixpkgs issue](https://github.com/NixOS/nixpkgs/issues/64400) since building recent neovim versions from master
is currently broken on nixpkgs.
