# Nix Install
alias ni='nix-env -iA'

# Nix Search
alias ns='nix-env -qaP'

function prompt_nix_shell_precmd {
  if [[ ${IN_NIX_SHELL} -eq 1 ]] then
    if [[ -n ${IN_WHICH_NIX_SHELL} ]] then
      NIX_SHELL_NAME=": ${IN_WHICH_NIX_SHELL}"
    fi
    NIX_PROMPT="%F{8}[%F{3}nix-shell${NIX_SHELL_NAME}%F{8}]%f"
    if [[ $PROMPT != *"$NIX_PROMPT"* ]] then
      PROMPT="$NIX_PROMPT $PROMPT"
    fi
  fi
}

function prompt_nix_shell_setup {
  autoload -Uz add-zsh-hook
  add-zsh-hook precmd prompt_nix_shell_precmd
}

prompt_nix_shell_setup "$@"
