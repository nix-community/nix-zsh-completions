# Nix Install
alias ni='nix-env -iA'

# Nix Search
alias ns='nix-env -qaP'

_nix_store_path() {
  _alternative \
    'nixpkgs:<nixpkgs>' \
    'path:File Path:_files'
}

# Factor out common options
_nix_help_opt='(- *)--help[Print help message and exit]'
_nix_version_opt='(- *)--version[Print version number and exit]'
_nix_verbose_opt='(--verbose -v)*'{--verbose,-v}'[Increase verbosity of diagnostic messages]'

_nix_boilerplate_opts=(
  $_help_opt \
  $_version_opt \
)

# Output Types
_nix_output_opts=(
  '--xml[Print expression from --eval as XML]'\
  '--json[Print expression from --eval as JSON]'\
)

_nix_gc_common=(
  '(- --print* --delete)--print-roots[Print roots used by garbage collector]' \
  '(- --print* --delete)--print-live[Print store paths reachable from roots]' \
  '(- --print* --delete)--print-dead[Print store paths not reachable from roots]' \
  '(- --print* --delete)--delete[Garbage collect all dead paths from the store]' \
)

_nix_args=(
  '*--arg[Argument to pass to the Nix function]:Name:( ):Value:( )'\
  '--argstr[Like --arg, but the value is a string]: :'\
)

_nix_AE=(
  '(--attr -A)'{--attr,-A}'[Select an attribute from the top-level Nix expression being evaluated]:attrPath:_files -/'\
  '(--expr -E)'{--expr,-E}'[Interpret command line args as Nix expressions]:*:Files:_files'\
)

_nix_common_opts=(
  $_verbose_opt \
  $_nix_args \
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
  '*-I+[Add path to Nix expression search path]:Include path:{_files -g \*.nix}'\
  '--option[Set Nix configuration option]: :'\
  '--repair[Fix corrupted or missing store paths by redownloading or rebuilding]'\
)
