# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mveron"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mveron bundler rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

### Added by the Heroku Toolbelt
export PATH="$HOME/bin:$PATH"

meldiff()
{
  git difftool  --tool=meld
}

pgrep()
{
  ps aux | grep -v grep | grep -i $1
}

alias tmux="TERM=screen-256color tmux"

alias :vst='vagrant status'
alias :vs='vagrant stop'
alias :vd='vagrant destroy'
alias :vblr='VBoxManage list runningvms'
alias :vbls='VBoxManage list vms'

export PATH="$HOME/bin/go/bin:$PATH"
export GOROOT=$HOME/bin/go
. ~/bin/tmux_helpers.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
