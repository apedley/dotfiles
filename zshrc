# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"

# Short command aliases
alias 'l=ls'
alias 'la=ls -A'
alias 'll=ls -l'
alias 'lq=ls -Q'
alias 'cd..=cd ..'
alias copy-public-key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias 'sshap=ssh andrew@andrewpedley.com'

# Quick find
f() {
    echo "find . -iname \"*$1*\""
    find . -iname "*$1*"
}
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-not-found github history-substring-search autojump gem rails3 sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#
# rvm
#
export PATH=$PATH:/home/andrew/.rvm/gems/ruby-1.9.3-p392/bin:/home/andrew/.rvm/gems/ruby-1.9.3-p392@global/bin:/home/andrew/.rvm/rubies/ruby-1.9.3-p392/bin:/home/andrew/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andrew/.rvm/bin
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

#
# rbenv
#
#export PATH=$HOME/.rbenv/bin:$PATH
#eval "$(rbenv init -)"

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias b="bundle"
alias bi="b install --path vendor/bundle"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias bp="b package"
alias bip="bi && bp"
alias bup="bu && bp"
alias binit="bi && bp && echo 'vendor/bundle' >> .gitignore"
