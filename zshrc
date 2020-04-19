# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export 
export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH=/home/fchaves/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# ZSH_THEME="powerlevel10k/powerlevel10k"
# POWERLEVEL9K_VCS_BACKENDS=(git)
# POWERLEVEL9K_GITSTATUS_DIR=$POWERLEVEL9K_INSTALLATION_DIR/gitstatus
# POWERLEVEL9K_DISABLE_GITSTATUS="false"
# POWERLEVEL9K_MAX_CACHE_SIZE=10000
# POWERLEVEL9K_VCS_MAX_INDEX_SIZE_DIRTY=-1

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(
  python
  asdf
  git
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

if [ -f ~/.vars ]
then
    . ~/.vars
fi

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `/usr/bin/ssh-agent`
    ssh-add
fi

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"


if [ -f "$HOME/.asdf/asdf.sh" ] ; then
    . $HOME/.asdf/asdf.sh
    . $HOME/.asdf/completions/asdf.bash
fi

# opam configuration
test -r /home/fchaves/.opam/opam-init/init.zsh && . /home/fchaves/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward

# fast pacman
# alias pac=yay  # For convenience
# pacmatic needs to be run as root: https://github.com/keenerd/pacmatic/issues/35
# alias pacmatic='sudo --preserve-env=pacman_program /usr/bin/pacmatic'
# Downgrade permissions as AUR helpers expect to be run as a non-root user. $UID is read-only in {ba,z}sh.
# alias yay='pacman_program="sudo -u #$UID /usr/bin/yay --pacman powerpill" pacmatic'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
