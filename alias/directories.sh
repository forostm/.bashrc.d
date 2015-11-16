#i Alias de directorios xenéricos
alias up='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias home='cd $HOME; ls'
alias tmp='cd /tmp/; ls'

alias documentos='cd $DIR_DOCS; ls'
alias doc='cd $DIR_DOCS; ls'
alias descargas='cd $DIR_DOWNLOAD; ls'
alias des='cd $DIR_DOWNLOAD; ls'
alias musica='cd $DIR_MUSIC; ls'
alias imaxes='cd $DIR_PICTURES; ls'
alias imx='cd $DIR_PICTURES; ls'
alias plantillas='cd $DIR_TEMPLATES; ls'
alias videos='cd $DIR_VIDEO; ls'

# Alias de directorios específicos
if [ -d "$DIR_PROJECTS" ]; then
  alias proxectos='cd $DIR_PROJECTS; ls'
  alias prx='cd $DIR_PROJECTS; ls'
fi

if [ -d "$DIR_SCRIPTS" ]; then
  alias scripts='cd $DIR_SCRIPTS; ls'
  alias scr='cd $DIR_SCRIPTS; ls'
fi

if [ -d "$DIR_PROJECT1" ]; then
  alias bramework='cd $DIR_PROJECT1; ls'
  alias bra='cd $DIR_PROJECT1; ls'
fi
