#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# bashrc.d: https://github.com/barcia/.bashrc.d
# ln $HOME/.bashrc.d/bashrc $HOME/.bashrc

DIR="$HOME/.bashrc.d"

. $DIR/personal

. $DIR/core/prompt.sh
. $DIR/core/settings.sh
. $DIR/core/system.sh
. $DIR/core/manpages.sh

. $DIR/alias/directories.sh
. $DIR/alias/generic.sh
. $DIR/alias/git.sh

if [ -f /usr/bin/pacman ]; then . $DIR/alias/pacman.sh; fi
if [ -f /usr/bin/apt-get ]; then  . $DIR/alias/apt-get.sh; fi

for i in $(ls $DIR/functions/)
do
  . $DIR/functions/$i
done
