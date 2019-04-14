ZSH Completions for Nix and NixOS
=================================

This project aims to provide a highly complete set of ZSH completions for [Nix](https://nixos.org/nix/),
[NixOS](https://nixos.org/), [NixOps](http://nixos.org/nixops/), and the surrounding ecosystem.

NixOS
----------------------
Setting `programs.zsh.enable = true` in `/etc/nixos/configuration.nix` will automatically install and enable `nix-zsh-compeletions`.

Oh-My-ZSH Installation
----------------------

```zsh
cd ~/.oh-my-zsh/custom/plugins
git clone git@github.com:spwhitt/nix-zsh-completions.git
```

Then add `nix-zsh-completions` to the plugins list in `~/.zshrc`

If you want your prompt to be prefixed by `[nix-shell]` when you're in a nix-shell add this to your zshrc:

```
prompt_nix_shell_setup
```

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
source $HOME/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=($HOME/nix-zsh-completions $fpath)
autoload -U compinit && compinit
```

Required ZSH version
------------------------

The completion scripts are known to be broken in ZSH version `5.0.8` or older, `5.2` or newer works.


ZSH Completions Tutorial
------------------------

[zsh-completions-howto](https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org)
