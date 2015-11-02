 # Función para configurar rápidamente diversos archivos

alias cfg='config'

config() {
  if [ ! $EDITOR ]; then
    read -p "Primeiro escolle un editor de texto (vim, emacs, kate, gedit, etc): " EDITOR
  fi
  
  if [[ ! $1 || "$1" == "-h" || "$1" == "--help" ]]; then
    config_manual
  else
    case $1 in
      bash)     config_bash ;;
      brackets) config_brackets ;;
      git)      config_git ;;
      hostname) config_hostname ;;
      kate)     config_kate ;;
      kate)     config_locale ;;
      pacman)   config_pacman ;;
      vim)      config_vim ;;
      xinit)    config_xinit ;;
      yaourt)   config_yaourt ;;
    esac
  fi
}

function config_manual {
  echo "Uso: config <programa/servizo>"
  echo "Axuda: config -h (--help)"
  echo ""
  echo "Programas/servizos:"
#  echo ""
  echo "  bash"
  echo "  brackets"
  echo "  git"
  echo "  kate"
  echo "  pacman"
  echo "  vim"
  echo "  yaourt"
  echo ""
  echo "Sistema operativo:"
#  echo ""
  echo "  hostname"
  echo "  locale"
  echo "  xinit"
  echo ""
}

function config_bash {
  echo ""
  echo "Configurar bash:"
  echo ""
  echo "  1) bashrc ($HOME/.bashrc)"
  echo "  2) bash_profile ($HOME/.bash_profile)"
  echo "  3) profile (root) (/etc/profile)"
  if [ -d $HOME/.bashrc.d ]; then
  echo "  4) directorio de bashrc ($HOME/.bashrc.d/)"
  fi
  echo ""
  read -p "Escolle unha opción: " ANSWER

  case $ANSWER in
    1) $EDITOR $HOME/.bashrc && source $HOME/.bashrc ;;
    2) $EDITOR $HOME/.bash_profile && source $HOME/.bash_profile ;;
    3) sudo $EDITOR /etc/profile && source /etc/profile ;;
    4) cd $HOME/.bashrc.d && ls ;;
    *) echo "Volve a intentalo" && config_bash ;;
  esac
}

function config_brackets {
  $EDITOR $HOME/.config/Brackets/brackets.json
}

function config_git {
  $EDITOR $HOME/.gitconfig 
}

function config_hostname {
  sudo $EDITOR /etc/hostname
}

function config_kate {
  $EDITOR $HOME/.config/katerc 
}

function config_locale {
  sudo $EDITOR /etc/locale.conf
}

function config_pacman {
  sudo $EDITOR /etc/pacman.conf
}

function config_vim {
  $EDITOR $HOME/.vimrc 
}

function config_xinit {
  $EDITOR $HOME/.xinitrc
}

function config_yaourt {
  echo ""
  echo "Configurar yaourt:"
  echo ""
  echo "  1) yaourtrc ($HOME/.yaourtrc)"
  echo "  2) yaourtrc (root) (/etc/yaourtrc)"
  echo ""
  read -p "Escolle unha opción: " ANSWER

  case $ANSWER in
  1) 
    if [ ! -f $HOME/.yaourtrc ]; then
      sudo cp /etc/yaourtrc $HOME/.yaourtrc
    fi
    $EDITOR $HOME/.yaourtrc
  ;;
  2) sudo $EDITOR /etc/yaourtrc;;
  *) echo "Volve a intentalo." && config_yaourt ;;
  esac
}