<!--
Thank you for reporting an issue :)

To quickly figure out any problem there's some information that's often useful.
Namely your system, and a trace of what the completion script is doing when it fails.

If the issue is a feature request or in any other way doesn't
require this information you can just ignore it,
deleting the `System` and `Completion trace` headers

Lines wrapped with \<!-- ... --\> will be ignored, so you don't have to delete them.
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
If Completion doesn't work:

Use the `Ctr-x ?` keybinding instead of tab (at the place tab fails).
This will give you a file in `/tmp` with a full trace.
Post the file to a gist service and include the link here.
-->
