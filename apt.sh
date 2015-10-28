# Administración de paquetes (Apt-get)
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias uninstall='sudo apt-get purge'
sysclean() {
  sudo apt-get -fy install;   #Repara as dependecias rotas
  sudo apt-get -y autoremove; #Elimina paquetes que xa non son necesarios
  sudo apt-get -y autoclean;  #Elimina paquetes de instalación almacenados en local
  sudo apt-get -y clean;      #Parecido ó anterior
  rm /var/crash/*;            #Limpa os rexistros de erros
}
