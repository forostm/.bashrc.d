#i Alias de directorios xenéricos
alias up='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias home='cd $HOME; ls'
alias documentos='cd $(xdg-user-dir DOCUMENTS); ls'
alias doc='cd $(xdg-user-dir DOCUMENTS); ls'
alias descargas='cd $(xdg-user-dir DOWNLOAD); ls'
alias des='cd $(xdg-user-dir DOWNLOAD); ls'
alias musica='cd $(xdg-user-dir MUSIC); ls'
alias imaxes='cd $(xdg-user-dir PICTURES); ls'
alias imx='cd $(xdg-user-dir PICTURES); ls'
alias plantillas='cd $(xdg-user-dir TEMPLATES); ls'
alias videos='cd $(xdg-user-dir VIDEOS); ls'

# Alias de directorios específicos
if [ -d '$HOME/proxectos' ]; then
  alias proxectos='cd $HOME/proxectos; ls'
  alias prx='cd $HOME/proxectos; ls'
fi

if [ -d '$HOME/scripts' ]; then
  alias scripts='cd $HOME/scripts; ls'
  alias scr='cd $HOME/scripts; ls'
fi

if [ -d '$HOME/proxectos/bramework' ]; then
  alias bramework='cd $HOME/proxectos/bramework; ls'
  alias bra='cd $HOME/proxectos/bramework; ls'
fi