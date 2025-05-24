# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
#
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
#
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

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
alias downloads="cd $DOWNLOADS"

# run bashrc with preferred code editor
alias aliases="$DEFAULTEDITOR $ZSH_CUSTOM/aliases.sh"
alias vimrc="$DEFAULTEDITOR ~/.vimrc"
alias zshrc="$DEFAULTEDITOR ~/.zshrc"

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