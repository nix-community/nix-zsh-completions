# Nix Install
alias ni='nix-env -iA'

# Nix Search
alias ns='nix-env -qaP'

_nix_shortcuts () {
    _values shortcuts "<nixpkgs>" "<nixos>"
}

_nix_path() {
  _alternative \
    'nixpkgs:Nixpkgs:_nix_shortcuts' \
    'path:File Path:_files -g \*.nix'
}

# Factor out common options

_nix_boilerplate_opts=(
  '(- *)--help[Print help message and exit]' \
  '(- *)--version[Print version number and exit]'
)

_nix_dry_run='--dry-run[Show what would be done without doing it]'

_nix_gc_common=(
  '(- --print* --delete)--print-roots[Print roots used by garbage collector]' \
  '(- --print* --delete)--print-live[Print store paths reachable from roots]' \
  '(- --print* --delete)--print-dead[Print store paths not reachable from roots]' \
  '(- --print* --delete)--delete[Garbage collect all dead paths from the store]' \
)

_nix_auto_args=(
  '*--arg[Argument to pass to the Nix function]:Name:( ):Value:( )'\
  '--argstr[Like --arg, but the value is a string]: :'\
)

_nix_search_path_args=(
  '*-I+[Add path to Nix expression search path]:Include path:{_files -g \*.nix}'\
)

_nix_AE=(
  '(--attr -A)'{--attr,-A}'[Select an attribute from the top-level Nix expression being evaluated]:attrPath:_files -/'\
  '(--expr -E)'{--expr,-E}'[Interpret command line args as Nix expressions]:*:Files:_files'\
)

_nix_common_opts=(
  '(--verbose -v)*'{--verbose,-v}'[Increase verbosity of diagnostic messages]'\
  $_nix_auto_args \
  $_nix_search_path_args \
  $_nix_AE \
  '(--no-build-output -Q)'{--no-build-output,-Q}'[Silence output to stdout and stderr]'\
  '(--max-jobs -j)'{--max-jobs,-j}'[Set the maximum number of build jobs that Nix will perform in parallel]'\
  '--cores[Set the parallelism of the individual builders (e.g. -j argument to make)]'\
  '--max-silent-time[Builder times out after not producing stdout/stderr for x seconds]:Seconds:( )'\
  '--timeout[Timeout builder after given number of seconds]:Seconds:( )'\
  '(--keep-going -k)'{--keep-going,-k}'[Keep going in case of failed builds, to the greatest extent possible]'\
  '(--keep-failed -K)'{--keep-failed,-K}'[Do not delete the build directory if build fails]'\
  '--fallback[If binary download fails, fall back on building from source]'\
  '--readonly-mode[Do not open Nix database]'\
  '--log-type[Configure how output is formatted]:Output format:((pretty\:"Default" escapes\:"Indicate nesting with escape codes" flat\:"Remove all nesting"))'\
  '--show-trace[Print stack trace of evaluation errors]'\
  '--option[Set Nix configuration option]:Option Name:( ):Option Value:( )'\
  '--repair[Fix corrupted or missing store paths by redownloading or rebuilding]'\
)
