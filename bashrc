#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# bashrc.d: https://github.com/barcia/.bashrc.d
# ln $HOME/.bashrc.d/bashrc $HOME/.bashrc

DIR="$HOME/.bashrc.d"

. $DIR/private.sh

. $DIR/settings.sh
. $DIR/user.sh
. $DIR/alias.sh


for i in $(ls $DIR/functions/)
do
  . $DIR/functions/$i
done