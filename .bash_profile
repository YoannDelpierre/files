# git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# alias
alias dev='source ~/Projets/development_env/development_env'
alias gitx='open -a GitX .'

# ember
alias et='ember test --filter'
alias est='ember test --server --filter'

# server
alias server='python -m SimpleHTTPServer'

# git tool
# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# export CG GIT
CT_GIT_ROOT=$HOME/Projets
PATH=$CT_GIT_ROOT/tools:$PATH

export PATH="$PATH:$HOME/.yarn/bin"

# eval rbenv
eval "$(rbenv init -)"
