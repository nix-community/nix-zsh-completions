ZSH Completions for Nix and NixOS
=================================

This project aims to provide a highly complete set of ZSH completions for [Nix](https://nixos.org/nix/),
[NixOS](https://nixos.org/), [NixOps](http://nixos.org/nixops/), and the surrounding ecosystem.

NixOS
----------------------
Set `programs.zsh.enableCompletion = true` in `/etc/nix/configuration.nix` and either add `nix-zsh-completions` to `systemPackages` or install it locally: `nix-env -iA nixos.nix-zsh-completions`

Oh-My-ZSH Installation
----------------------

```zsh
git clone git@github.com:spwhitt/nix-zsh-completions.git ~/.oh-my-zsh/custom/plugins/nix
```

Then add `nix` to the plugins list in `~/.zshrc`

Antigen Installation
--------------------

Add the following to `~/.zshrc`

```zsh
antigen bundle git@github.com:spwhitt/nix-zsh-completions.git
```

Plain ZSH Installation
----------------------

Clone this repository and add the following to `~/.zshrc` with the path to 
`nix-zsh-completions` updated as necessary.

```zsh
source $HOME/nix-zsh-completions/nix.plugin.zsh
fpath=($HOME/nix-zsh-completions $fpath)
autoload -U compinit && compinit
```

ZSH Completions Tutorial
------------------------

[zsh-completions-howto](https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org)
