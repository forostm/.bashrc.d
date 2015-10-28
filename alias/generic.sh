# Alias xenéricos
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
alias rm='rm -rfv'         # Elimina arquivos e directorios aínda que non estén baleiros
alias mv="mv -v"           # Explica o que está facendo
alias mkdir='mkdir -pv'    # Crea directorios recursivamente
alias grep='grep --color'  # Amosa a palabra buscada con cor
alias wget='wget -c'       # Se falla a conexión, continúa despois coa descarga
alias reboot='sudo reboot' # Reinicia o ordenador
alias x='startx'           # Inicia a interface gráfica

alias cds='echo "`pwd`" > $HOME/.cdsave; echo "Ruta gardada"'  # cd save: Garda o lugar no que te atopas
alias cdb='cd "`cat $HOME/.cdsave`"; \rm $HOME/.cdsave'        # cd back: Volve ó lugar que gardaches con 'cds' e elimina o aarquivo '.cdsave'
