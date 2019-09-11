#!/bin/bash
alias showip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias setpdt="sudo ln -fs /usr/share/zoneinfo/Etc/GMT+8 /etc/localtime"
alias setest="sudo ln -fs /usr/share/zoneinfo/Etc/GMT+5 /etc/localtime"
alias vi=vim
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~/dev"
alias ~go="cd ~/go/src/gitlab.com/$username"
alias chrome="google-chrome-stable"
alias ~~="cd $HOME/dev"
alias get-pub="cat ~/.ssh/id_rsa.pub | xclip -selection c"
alias logout="gnome-session-quit"
if ls --color=auto 1>/dev/null 2>&1; then
  alias "ls=ls --color=auto"
fi
