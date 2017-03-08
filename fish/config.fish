# -------------------------- #
# CONFIGURE GENERAL SETTINGS #
# -------------------------- #

set -x EDITOR "vim"
set -x PATH ~/.dotfiles/scripts $PATH

# Fix typos
alias sl 'ls'
alias dc 'cd'
alias mr 'rm -i'
alias pc 'cp -i'

# Make standard commands safer
alias cp 'cp -i'
alias rm 'rm -i'
alias mv 'mv -i'

# Shortcuts to common calls
alias callgrind "valgrind --tool=callgrind --callgrind-out-file=callgrind.out"
alias gitroot 'cd "./`git rev-parse --show-cdup`"'


# --------------------------- #
# SOURCE LOCAL CONFIGURATIONS #
# --------------------------- #
if test -e "$local_fish_config_file"
    source $local_fish_config_file
end