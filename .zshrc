# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# for non-pattern search like in bash
bindkey "^R" history-incremental-search-backward

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
HIST_STAMPS="dd.mm.yyyy"

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
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My custom aliases for Faroeq
DEFAULTEDITOR="code"

#directory variables
export LAMPPDIR="/opt/lampp/lampp"
export HTDOCS="/opt/lampp/htdocs"
export DOCUMROOT="$HOME/code"
DOWNLOADS="$HOME/Downloads"

#directories - projects
alias sms="cd $DOCUMROOT/crane-alligator/src/spreader-micro-service"
alias ca="cd $DOCUMROOT/crane-alligator"
alias caf="cd $DOCUMROOT/cloudshift_api-famiro"
alias ds="cd $DOCUMROOT/dyflexis-sandbox"
alias tle1="cd $DOCUMROOT/TLE1"
alias splitter="cd $DOCUMROOT/splitter"
alias bks="cd $DOCUMROOT/bookservice"
alias bkc="cd $DOCUMROOT/bookclient"
alias tdm="cd $DOCUMROOT/team-do-minor"
alias pps="cd $DOCUMROOT/PipelinePirates"
alias vg="cd $DOCUMROOT/video-gesture"

# AllYourGoods restaurant project
alias aygr="cd $DOCUMROOT/ayg-hr-restaurant"
# In case of typo
alias agyr="cd $DOCUMROOT/ayg-hr-restaurant"

alias portfolio="cd $PF"
alias pf="cd $HOME/code/portfolio"

alias shopprijs="cd $DOCUMROOT/shopprijs"
alias pythonworkshop="cd $DOCUMROOT/pythonworkshop"
alias spl=" cd $DOCUMROOT/shopprijs-laravel"

alias rotterdampshop="cd $DOCUMROOT/rotterdamp-shop"
alias rotterdamp="cd $DOCUMROOT/rotterdamp"

function _goto(){
  cd $DOCUMROOT/$1;
}

alias cdp="_goto"

# folders
alias htdocs="cd $HTDOCS"
alias projects="cd $DOCUMROOT"

# alias downloads="cd $DOWNLOADS"

# run bashrc with preferred code editor
alias bashrc="$DEFAULTEDITOR ~/.bashrc"
alias aliases="$DEFAULTEDITOR ~/.bash_aliases"
alias vimrc="$DEFAULTEDITOR ~/.vimrc"

# scripts
alias clr="clear"
# typo version of clear
alias claer="clear"
alias crl="clear"

# typo version of source
alias sorue="source"
alias sorce="source"
alias srce="source"

# git commands
alias ga="git add ."
alias gp="git push"
alias gs="git status"
alias gst="git status"
alias gcm="git commit -m"

# sail commands
alias sail="bash vendor/bin/sail"

# pest commands
alias pest="./vendor/bin/pest"

# list commands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsp="cd $DOCUMROOT && ls -1 $DOCUMROOT"

# pnpm commands
alias pn="pnpm"

# copy current directory on clipboard
alias cpwd="pwd | xclip -selection clipboard"

# flask venv activate command
alias act=". venv/bin/activate"

# permission helpers
alias chx="chmod +x"

# for console-ninja extension
PATH=~/.console-ninja/.bin:$PATH

# fnm
FNM_PATH="/Users/faroeqalves/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/faroeqalves/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

# zsh completions
if type brew &>/dev/null; then
   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

   autoload -Uz compinit
   compinit
fi

# Auto-fix ZSH compinit insecure directories
function fix_compinit_insecure_dirs() {
  local insecure_dirs=$(compaudit 2>/dev/null)
  if [[ -n "$insecure_dirs" ]]; then
    echo "Fixing insecure completion directories..."
    for dir in ${(f)insecure_dirs}; do
      chmod 755 "$dir"
      chmod 755 "$(dirname $dir)"
    done
    # Reinitialize completions
    compinit
  fi
}
fix_compinit_insecure_dirs