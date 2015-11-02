# Administración de paquetes (Pacman e Yaourt)
alias pacman='sudo pacman'
alias install='yaourt -S'
alias search='yaourt -Ss'
alias info='yaourt -Si'
alias update='yaourt -Syyua'
alias uninstall='yaourt -Rns'
sysclean() {
  if [[ -n $(pacman -Qdt) ]]; then
    sudo pacman -Rns $(pacman -Qdtq) # Elimina paquetes orfos
    echo "Eliminaronse paquetes orfos"
  fi
  sudo pacman -Scc # Elimina paquetes da caché
  rm /var/crash/*  # Limpa os rexistros de erros
  
  # Limpa a papeleira de reciclaxe
  \rm -rf $HOME/.local/share/Trash/files/*
  \rm -rf $HOME/.local/share/Trash/files/.*
  \rm -rf $HOME/.local/share/Trash/info/*
  \rm -rf $HOME/.local/share/Trash/info/.*
  if [ -d $HOME/.local/share/Trash/terminal ]; then
    \rm -rf $HOME/.local/share/Trash/terminal/*
    \rm -rf $HOME/.local/share/Trash/terminal/.*
  fi
}
