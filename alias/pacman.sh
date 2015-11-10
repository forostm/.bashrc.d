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
}
