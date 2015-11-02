#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# bashrc.d: https://github.com/barcia/.bashrc.d
# ln $HOME/.bashrc.d/bashrc $HOME/.bashrc

DIR="$HOME/.bashrc.d"

. $DIR/core/prompt.sh
. $DIR/core/settings.sh
. $DIR/core/manpages.sh
. $DIR/core/miscelanea.sh

. $DIR/alias/directories.sh
. $DIR/alias/generic.sh
. $DIR/alias/laptop.sh

if [ -f /usr/bin/pacman ]; then . $DIR/alias/pacman.sh; fi
if [ -f /usr/bin/apt-get ]; then  . $DIR/alias/apt-get.sh; fi

. $DIR/functions/bak.sh
. $DIR/functions/calc.sh
. $DIR/functions/compress.sh
. $DIR/functions/config.sh
. $DIR/functions/cs.sh
. $DIR/functions/echolores.sh
. $DIR/functions/extract.sh
. $DIR/functions/ice.sh
. $DIR/functions/mcdir.sh
. $DIR/functions/new.sh
. $DIR/functions/note.sh
. $DIR/functions/remember.sh
. $DIR/functions/rmt.sh
. $DIR/functions/trash.sh
