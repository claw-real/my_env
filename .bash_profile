if [[ $(uname) = 'Darwin' ]]; then
  # brew stuffs
  export PATH="/usr/local/bin:$PATH"
  source "$(brew --prefix grc)/etc/grc.bashrc"
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi


# Fix colors in iterm
export PROMPT_PREPOSITION_COLOR="\033[1;22m"
export PROMPT_DEVICE_COLOR="\033[1;35m"
export PROMPT_GIT_STATUS_COLOR="\033[1;96m"


for file in ~/.{bash_prompt,aliases,functions,path,extra,exports,proxy,corp,dockerfunctions}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

HISTCONTROL=ignoredups:ignorespace

# Append to history file for each new command
export PROMPT_COMMAND='history -a'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=10000
HISTSIZE=10000

# Timestamp bash history
export HISTTIMEFORMAT="%d/%m/%y %T "

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$$ $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi;'

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# OSX bash completion
if [[ $(uname) = 'Darwin' ]]; then
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
  fi
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[[ -e "$HOME/.ssh/config" ]] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

## Turn off sourcing shellcheck warning
export SHELLCHECK_OPTS="-e SC1090 -e SC2129 -e SC2016"
function cd() { if [ $# -eq 2 ]; then builtin cd ${PWD/$1/$2}; else builtin cd $1; fi }
