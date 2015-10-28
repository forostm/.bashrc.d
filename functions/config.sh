 # Función para configurar rápidamente diversos archivos

config() {
 case $1 in
  mpd)     vim ~/.mpdconf ;;
  conky)   vim ~/.conkyrc ;;
  ncp)     vim ~/.ncmpcpp/config ;;
  rn)      vim ~/.config/ranger/rc.conf ;;
  tmux)    vim ~/.tmux.conf ;;
  vim)     vim ~/.vimrc ;;
  xi)      vim ~/.xinitrc ;;
  xd)      vim ~/.Xdefaults ;;
  zsh)     vim ~/.zshrc && source ~/.zshrc ;;
  alias)   vim ~/.zsh_aliases && source ~/.zshrc ;;
  uc)      vim ~/.mozilla/firefox/*.default/chrome/userChrome.css ;;
  i3)      vim ~/.i3/config ;;
  irssi)   vim ~/.irssi/config ;;
  crshd)   vim ~/.irssi/phallus.theme ;;
  lemon)   ~/.fonts/bdf;gbdfed;vim lemon.bdf;bdftopcf -o ../lemon.pcf lemon.bdf;fonts ;;
  uushi)   ~/.fonts/bdf;gbdfed;bdftopcf -o ../uushi.pcf uushi.bdf ;;
  awesome) vim ~/.config/awesome/rc.lua ;;
  pacman)  sudo vim /etc/pacman.conf ;;
  vimp)    vim ~/.vimperatorrc ;;
  mutt)    vim ~/.muttrc ;;
  vimmode) vim ~/.irssi/vim_moderc ;;
  *)       echo "unknown conf: $1" ;;  
 esac
}
