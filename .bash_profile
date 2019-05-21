export DOCKER_TAG=goanna
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias go='docker run -v `pwd`:/repo:cached -it $DOCKER_TAG /bin/bash'
