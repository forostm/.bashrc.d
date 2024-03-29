# Alias xenéricos
alias l='ls'
alias ls='ls -F --color --group-directories-first'  # Lista os directorios con / ó final | Amosa os directorios con cor | Coloca os directorios primeiro
alias lsa='ls -A'          # Igual ó anterior, pero incluindo ficheiros ocultos
alias lst='ls -tr1'        # Lista por orde de modificación (o máis recente de último)
alias ll='ls -lh'          # Lista de forma detallada | amosa as unidades en formatos lexibles
alias lla='ll -A'          # Igual ó anterior, pero amosando os ficheiros ocultos
alias llt='ll -tr'         # Lista de forma detallada pero ordenandoos por data de creación (o máis recente de último)
alias llc='ll -tcr'        # Igual ó anterior, pero ordenandoos por data de cambio (o máis recente de último)
alias llu='ll -tur'        # Igual ó anterior, pero ordenandoos por data de acceso (o máis recente de último)
alias llk='ll -Sr'         # Lista por tamaño (o máis grande de último)
alias lle='ll -X'          # Lista por extensión
alias cp="cp -v"           # Amosa os arquivos que copia
alias rm='rm -rfv'         # Borra todo de forma recursiva
alias mv="mv -v"           # Explica o que está facendo
alias mkdir='mkdir -pv'    # Crea directorios recursivamente
alias grep='grep --color'  # Amosa a palabra buscada con cor
alias wget='wget -c'       # Se falla a conexión, continúa despois coa descarga
alias scp='scp -rp'        # Copia de forma recursiva e mantén os datos dos arquivos
alias x='startx'           # Inicia a interface gráfica
alias q='exit'             # Salir
alias reboot='sudo reboot' # Reinicia o ordenador
alias fuckoff='poweroff'   # Reinicia o ordenador
alias sudo='sudo '         # Alias para que os demais alias funcionen con sudo

alias cds='echo "`pwd`" > $HOME/.cdsave; echo "Ruta gardada"'  # cd save: Garda o lugar no que te atopas
alias cdb='cd "`cat $HOME/.cdsave`"; \rm $HOME/.cdsave'        # cd back: Volve ó lugar que gardaches con 'cds' e elimina o aarquivo '.cdsave'

if [ -f '/usr/bin/vim' ]; then
  alias vi='vim'
  alias svim='sudo vim'
fi
alias skate='sudo kate'
alias webserver='sudo python -m http.server 80'
alias ipext='curl ifconfig.me/ip'
alias reload='source $HOME/.bashrc'

alias bashdr='cd $HOME/.bashrc.d/; ls'
alias bashalias='$EDITOR $HOME/.bashrc.d/alias.sh && source $HOME/.bashrc'
alias bashset='$EDITOR $HOME/.bashrc.d/settings.sh && source $HOME/.bashrc'
alias bashuser='$EDITOR $HOME/.bashrc.d/user.sh && source $HOME/.bashrc'
alias bashrc='$EDITOR $HOME/.bashrc && source $HOME/.bashrc'
alias bashpr='$EDITOR $HOME/.bash_profile && source $HOME/.bash_profile'


# Útiles só no ordenador personal
if [ $(hostname) == "laptop" ]; then
  alias pi='ssh $IRASPBERRY'
  alias piftp='sftp $IRASPBERRY'
  alias server='ssh $ISERVER'
  alias serverftp='sftp $ISERVER'
fi

# Útiles só no servidor
if [ $(hostname) == "server" ]; then
  alias www='cd /srv/www/; ls'
  alias sit-a='cd /etc/apache2/sites-avaiable/; ls'
  alias sit-e='cd /etc/apache2/sites-enabled/; ls'
fi

# Alias de directorios xenéricos
alias up='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ..l='cd ..; ls'
alias ...l='cd ../..; ls'
alias ....l='cd ../../..; ls'
alias .....l='cd ../../../..; ls'
alias ......l='cd ../../../../..; ls'

alias home='cd $HOME; ls'

alias etc='cd /etc/; ls'
alias media='cd /run/media/$USER/; ls'
alias srv='cd /srv/; ls'
alias tmp='cd /tmp/; ls'
alias usr='cd /usr/; ls'
alias var='cd /var/; ls'
alias log='cd /var/log; ls'

alias documentos='cd $DIR_DOCS; ls'
alias doc='cd $DIR_DOCS; ls'
alias descargas='cd $DIR_DOWNLOAD; ls'
alias des='cd $DIR_DOWNLOAD; ls'
alias mapas='cd $DIR_MAPS; ls'
alias map='cd $DIR_MAPS; ls'
alias musica='cd $DIR_MUSIC; ls'
alias imaxes='cd $DIR_PICTURES; ls'
alias imx='cd $DIR_PICTURES; ls'
alias plantillas='cd $DIR_TEMPLATES; ls'
alias videos='cd $DIR_VIDEOS; ls'
alias vid='cd $DIR_VIDEOS; ls'

if [ -d "$DIR_SCRIPTS" ]; then
    alias scripts='cd $DIR_SCRIPTS; ls'
    alias scr='cd $DIR_SCRIPTS; ls'
fi

if [ -d "$DIR_PROJECTS" ]; then
    alias proxectos='cd $DIR_PROJECTS; ls'
    alias prx='cd $DIR_PROJECTS; ls'
fi

if [ -d "$DIR_BRAMEWORK" ]; then
    alias bramework='cd $DIR_BRAMEWORK; ls'
    alias bra='cd $DIR_BRAMEWORK; ls'
fi


# Alias de git
alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gt='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gp='git push'
alias gpom='git push origin master'
alias gck='git checkout'


# Pacman
alias pacs='sudo pacman -S' # Instalar paquetes
alias pacss='sudo pacman -Ss' # Buscar paquetes
alias pacsy='sudo pacman -Sy' # Actualizar repositorios se o precisan
alias pacsy='sudo pacman -Sy' # Actualizar paquetes
alias pacsyu='sudo pacman -Syu' # Actualizar paquetes (despois de act. repos.)
alias pacsyy='sudo pacman -Syy' # Forzar actualizar repositorios
alias pacsyyu='sudo pacman -Syyu' # Atualizar paquetes (despois de act. repos.)
alias pacsi='sudo pacman -Si' # Información de un paquete
alias pacsg='sudo pacman -Sg' # Amosa os paquetes de un grupo (Sen argumentos, amosa tódolos grupos)
alias pacsc='sudo pacman -Sc' # Elimina da caché os paquetes que xa non están instalados
alias pacscc='sudo pacman -Scc' # Elimina a caché de tódolos paquetes
alias pacsw='sudo pacman -Sw' # Descarga o paquete, sen instalalo
alias pacqd='sudo pacman -Qd' # Paquetes instalados como dependencias
alias pacqe='sudo pacman -Qe' # Paquetes instalados explícitamente
alias pacqt='sudo pacman -Qt' # Paquetes instalados que non son requeridos por outro paquete
alias pacqi='sudo pacman -Qi' # Información de un paquete instalado
alias pacqg='sudo pacman -Qg' # Amosa os paquetes instalados de un grupo (Sen argumentos, amosa tódolos grupos)
alias pacqk='sudo pacman -Qk' # Verifica que estén tódolos arquivos do paquete (Sen argumentos, verifica tódolos paquetes)
alias pacql='sudo pacman -Ql' # Lista tódolos arquivos creados por un paquete (Sen argumentos, amosa os de tódolos paquetes)
alias pacqu='sudo pacman -Qu' # Paquetes actualizables
alias pacqm='sudo pacman -Qm' # Paquetes descargados e instalados manualmente
alias pacmrn='sudo pacman -Rn' # Elimina paquetes
alias pacmrns='sudo pacman -Rns' # Elimina paquetes e as súas dependencias (sempre que non sexan requeridas por outros, e non se instalaran explícitamente)
alias paclog='cat /var/log/pacman.log'
alias paconf='sudo $EDITOR /etc/pacman.conf'

# Administración de paquetes (Pacman e Yaourt)
if [ -f /usr/bin/pacman ]; then
    alias pacman='sudo pacman'
    alias install='yaourt -S'
    alias search='yaourt -Ss'
    alias info='yaourt -Si'
    alias upgrade='yaourt -Syyua'
    alias uninstall='yaourt -Rns'
    sysclean() {
    if [[ -n $(pacman -Qdttq) ]]; then
        sudo pacman -Rns $(pacman -Qdttq) # Elimina paquetes orfos
        echo "Eliminaronse paquetes orfos"
    fi
    sudo pacman -Scc # Elimina paquetes da caché
    }
fi


# Administración de paquetes (Apt-get)
if [ -f /usr/bin/apt-get ]; then
    alias install='sudo apt-get install'
    alias search='sudo apt-cache search'
    alias info='sudo apt-cache show'
    alias upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade -V && sudo apt-get autoremove'
    alias uninstall='sudo apt-get purge'
    sysclean() {
        sudo apt-get -fy install;   # Repara as dependecias rotas
        sudo apt-get -y autoremove; # Elimina paquetes que xa non son necesarios
        sudo apt-get -y autoclean;  # Elimina paquetes de instalación almacenados en local
        sudo apt-get -y clean;      # Parecido ó anterior
        rm /var/crash/*;            # Limpa os rexistros de erros
    }
fi
