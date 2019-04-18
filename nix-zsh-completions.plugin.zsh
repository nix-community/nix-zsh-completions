# Nix Install
alias ni='nix-env -iA'

# Nix Search
alias ns='nix-env -qaP'

function prompt_nix_shell_precmd {
  if [[ -n ${IN_NIX_SHELL} && ${IN_NIX_SHELL} != "0" || ${IN_NIX_RUN} && ${IN_NIX_RUN} != "0" ]]; then
    if [[ -n ${IN_WHICH_NIX_SHELL} ]] then
      NIX_SHELL_NAME=": ${IN_WHICH_NIX_SHELL}"
    fi
    if [[ -n ${IN_NIX_SHELL} && ${IN_NIX_SHELL} != "0" ]]; then
      NAME="nix-shell"
    else
      NAME="nix-run"
    fi
    NIX_PROMPT="%F{8}[%F{3}${NAME}${NIX_SHELL_NAME}%F{8}]%f"
    if [[ $PROMPT != *"$NIX_PROMPT"* ]] then
      PROMPT="$NIX_PROMPT $PROMPT"
    fi
  fi
}

function prompt_nix_shell_setup {
  autoload -Uz add-zsh-hook
  add-zsh-hook precmd prompt_nix_shell_precmd
}

# Add this to your zshrc if you want the prompt prefixed with `[nix-shell]`
# when you're in a nix-shell environment.
# prompt_nix_shell_setup "$@"
