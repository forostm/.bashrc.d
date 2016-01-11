# Configuración do prompt

## Colores por usuarios
if [ $(echo $USER) == root ]; then
  USER_COLOR="1;31m"
else
  USER_COLOR="1;33m"
fi

## Colores por equipos
if [ $(hostname) == "raspberry" ]; then
  HOST_COLOR="1;35m"  # Lila
elif [ $(hostname) == "server" ]; then
  HOST_COLOR="1;90m"  # Gris
else
  HOST_COLOR="1;33m"  # Amarillo
fi

if [ -f "/etc/bash_completion.d/git-prompt.sh" ]; then
  export PS1='\[\e['$USER_COLOR'\]\u\[\e[m\]\[\e[1;30m\]@\[\e[m\]\[\e['$HOST_COLOR'\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[1;30m\]\$\[\e[m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;30m\]>\[\e[m\] '
else
  export PS1='\[\e['$USER_COLOR'\]\u\[\e[m\]\[\e[1;30m\]@\[\e[m\]\[\e['$HOST_COLOR'\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[1;30m\]\$ >\[\e[m\] '
fi

# Variables globais
export EDITOR="vim"
export PAGER="less"
export RASPBERRY="192.168.1.2"
export IRASPBERRY="ivan@192.168.1.2"
export SERVER="37.139.28.29"
export ISERVER="ivan@37.139.28.29"

export DIR_DOCS="$HOME/documentos"
export DIR_DOWNLOAD="$HOME/descargas"
export DIR_MAPS="$HOME/mapas"
export DIR_MUSIC="$HOME/musica"
export DIR_PICTURES="$HOME/imaxes"
export DIR_TEMPLATES="$HOME/plantillas"
export DIR_VIDEOS="$HOME/videos"

export DIR_SCRIPTS="$HOME/.scripts"
export DIR_PROJECTS="$HOME/proxectos"
export DIR_BRAMEWORK="$HOME/proxectos/bramework"


# Paths
if [ -d "$DIR_SCRIPTS" ]; then
    PATH="$PATH:$DIR_SCRIPTS"
fi

if [ -f "/usr/bin/ruby" ]; then
    PATH="$PATH:/home/$USER/.gem/ruby/2.2.0/bin/"
fi


# Colorea a saída de less. (require instalar 'source-highlight')
# yaourt -S source-highlight
if [ -f "/usr/bin/source-highlight-esc.sh" ]; then
    export LESS=-R
    export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
fi


# Bash completion
# Recoméndase instalar 'bash-completion' que añade moitos autocompletados e ademáis carga automáticamente o contido do directorio '/etc/bash_completion.d'
# yaourt -S bash-completion
# Carga tódolos arquivos no directorio '/etc/bash_completion.d' se existe o directorio pero non está instalado 'bash-completion'
if [[ -d /etc/bash_completion.d && ! -d /usr/share/bash-completion ]]; then
  for i in $(ls /etc/bash_completion.d/)
  do
    . /etc/bash_completion.d/$i
  done
fi


# Colores para as páxinas do manual
export LESS=-R
export LESS_TERMCAP_mb=$(printf '\e[01;36m')
export LESS_TERMCAP_md=$(printf '\e[01;31m')
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_so=$(printf '\e[01;33m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_us=$(printf '\e[04;36m')
