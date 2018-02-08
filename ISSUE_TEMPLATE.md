<!--
Thank you for reporting an issue :) broken software is no fun for anyone :(

To quickly figure out any problem there's some information that's often useful.
Namely your system and a step by step explanation on how to reproduce the
problem (or a completion trace if reproduction isn't clear)

If the issue is a feature request or doesn't require this information you can
omit it, deleting the `System` and `Completion trace` headers

Lines wrapped with \<!-- ... --\> will be ignored, so you don't have to delete them.
-->

### Description

### Reproduction steps

<!--
Steps to reproduce the problem
-->

### System

- nix-zsh-completions version: <!-- version or git commit -->
- ZSH version: <!-- print $ZSH_VERSION -->
- NIX_PATH: <!-- print $NIX_PATH -->
<!-- 
also run `nix-shell -p nix-info --run "nix-info -m"` and paste the result here
-->

### Completion trace

<!--
If the issue is elusive and you're unable to reproduce it conistently a completion trace of the failure can be useful.

To produce a trace do this:

Use the `Ctr-x ?` keybinding instead of tab (at the place tab fails).
This will give you a file in `/tmp` with a full trace.
Post the file to a gist service and include the link here.
-->
