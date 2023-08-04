# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias nitsch="clear && nitch"
alias cat="bat --plain"
alias cit="cd ~/git"
alias polybarr="/bin/bash ~/.config/polybar/colorblocks/launch.sh"
export PATH="/home/phonkd/go/bin:$PATH"
export EDITOR="alacritty --command nvim"
export VISUAL="alacritty --command nvim"
eval $(thefuck --alias)


#bedag alias


#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
################################################################################

## BEGIN ANSIBLE BLOCK ##
bdg_proxy() {
  export http{,s}_proxy="http://localhost:8888"
}

bk() {
  kill "$(pgrep -f 'ssh.*fN.*gw.*[rbw]e.*')" 2>/dev/null
}

co() {
  if pgrep -f '[s]shgwbe' 1>/dev/null; then { ssh sshgwcobe; true; } else ssh sshgwcowe; fi
}

ci() {
  if pgrep -f '[s]shgwbe' 1>/dev/null; then { ssh sshgwcibe; true; } else ssh sshgwciwe; fi
}

kb() {
  if pgrep -f '[s]shgwbe' 1>/dev/null; then { ssh sshgwkbbe; true; } else ssh sshgwkbwe; fi
}

coi() {
  if pgrep -f '[s]shgwbe' 1>/dev/null; then { ssh admingwbe; true; } else ssh admingwwe; fi
}

alias bdg_ldap="source \${HOME}/.scripts/bdg_ldap.sh"
alias bedag="~/.scripts/bdg_gwup.sh nobecloud"
alias bedagx="~/.scripts/bdg_gwup.sh becloud"
alias becloud1='ssh sshgw-region1.cloud.kb-bedag.ch'
alias becloud2='ssh sshgw-region2.cloud.kb-bedag.ch'
alias bs='pgrep -af "ssh -f[N]"'
alias glab='bdg_proxy; /usr/bin/glab'

# Kubernetes stuff
# shellcheck source=/usr/bin/kubectl
source <(kubectl completion bash)
alias kubectl='bdg_proxy; /usr/bin/kubectl'
alias kubens='bdg_proxy; /usr/bin/kubens'
alias k='bdg_proxy; /usr/bin/kubectl'
complete -o default -F __start_kubectl k

# bedagctl stuff
# shellcheck source=/dev/null
[ -f "${HOME}/.scripts/bedagctl" ] && source <(BEDAGCTL_ADMIN=1 "${HOME}/.scripts/bedagctl" completion bash)
alias bedagctl='bdg_proxy; export BEDAGCTL_ADMIN=1; bedagctl'
## END ANSIBLE BLOCK ##
