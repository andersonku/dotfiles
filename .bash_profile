export DOCKER_TAG=goanna
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias go='docker run -v `pwd`:/repo:cached -it $DOCKER_TAG /bin/bash'
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
export REPO_ROOT="~/cstat"
export PATH="~/.local/bin:~/tools/bin:$REPO_ROOT/stage/linux/bin:$REPO_ROOT/stage/linux/cstat:~/cstat/cstat/bei:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
export SVNDIR=$REPO_ROOT
export STAGETOP=$REPO_ROOT/stage
alias makec='goannacc --package-dir=.. --package-dir=../../../gxsl --package-dir=../../../gisl '
alias ta="tmux attach"
alias dc="docker-compose"
alias e="emacsclient"
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gorawxml="goannacc --cmd=rawxml"
#alias goxml="goannacc --cmd=xml"
alias goc="cd ~/cstat/cstat/goanna/checks"
alias canon="ssh -Y aku@cannon"
alias nikon="ssh -Y scripts@nikon"
alias pana="ssh -Y scripts@panasonic"
alias nvpn="ssh -Y aku@10.8.0.3"
alias ll="ls -l"
alias ltr="ls -ltr"
alias reload="source ~/.bash_profile"

export TERM=xterm-256color

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# opam configuration
# test -r /Users/aku/.opam/opam-init/init.sh && . /Users/aku/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
