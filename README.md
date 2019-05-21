# dotfiles
Following the instructions at: https://www.atlassian.com/git/tutorials/dotfiles

```
git clone --bare git@github.com:andersonku/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
