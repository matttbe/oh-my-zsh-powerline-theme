if [ ! -d $HOME/.oh-my-zsh ]; then
    source $HOME/.zshrc.pre-oh-my-zsh
    return
fi

POWERLINE_RIGHT_A="exit-status"
POWERLINE_NO_BLANK_LINE="true"
POWERLINE_FULL_CURRENT_PATH="true"
POWERLINE_SHOW_GIT_ON_RIGHT="true"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cp z)

# User configuration

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

[ -f $HOME/.zsh.common ] && source $HOME/.zsh.common

HISTFILE=~/.zsh_history
HISTSIZE=7500
SAVEHIST=$HISTSIZE
HISTFILESIZE=$HISTSIZE
# Display all history
alias history='history -d 1'
setopt extendedglob
bindkey -e
# do not share history between consoles
unsetopt share_history

alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir

zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

function title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}
 
  # Truncate command, and join lines.
  a=$(print -Pn "%40>...>$a" | tr -d "\n")
 
  case $TERM in
  screen*)
    print -Pn "\ek$a:$3\e\\" # screen title (in ^A")
    ;;
  xterm*|rxvt*)
    ##print -Pn "\e]0;$USER@$HOSTNAME: $PWD\007"
    ##print -Pn "\e]2;$2 | $a:$3\a" # plain xterm title
    precmd() { print -Pn "\e]0;%m:%~\a" }
    preexec () { print -Pn "\e]0;$1\a" }
    ;;
  esac
}

# precmd is called just before the prompt is printed
function precmd() {
  title "zsh" "$USER@%m" "%55<...<%~"
}
 
# preexec is called just before any command line is executed
function preexec() {
  title "$1" "$USER@%m" "%35<...<%~"
}

