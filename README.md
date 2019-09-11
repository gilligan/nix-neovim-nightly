## nix-neovim-nightly

This repository provides a nix package of neovim nightly. If you want to try bleeding edge features like
floating window support and you are using Nix/NixOS you have come to the right place ;-)

### Installation

```
$ nix-env -iA neovim-nightly -f https://github.com/gilligan/nix-neovim-nightly/tarball/master
```

#### Cachix

You can also make use of [cachix](https://cachix.org) if you want to avoid building anything

```
$ cachix use neovim-nightly
```

