# Función para extraer arquivos
# https://github.com/xvoland/Extract

alias extraer="extract"

extract() {
  if [ -z "$1" ]; then
    echo-blue "Uso: extract <directorio/nome_arquivo>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
  fi
  for i in "$@"
  do
    if [ -f "$i" ] ; then
        NAME=${i%.*}
        mkdir $NAME && cd $NAME
        case "$i" in
          *.tar.bz2)   tar xvjf ../"$i"    ;;
          *.tar.gz)    tar xvzf ../"$i"    ;;
          *.tar.xz)    tar xvJf ../"$i"    ;;
          *.lzma)      unlzma ../"$i"      ;;
          *.bz2)       bunzip2 ../"$i"     ;;
          *.rar)       unrar x -ad ../"$i" ;;
          *.gz)        gunzip ../"$i"      ;;
          *.tar)       tar xvf ../"$i"     ;;
          *.tbz2)      tar xvjf ../"$i"    ;;
          *.tgz)       tar xvzf ../"$i"    ;;
          *.zip)       unzip ../"$i"       ;;
          *.Z)         uncompress ../"$i"  ;;
          *.7z)        7z x ../"$i"        ;;
          *.xz)        unxz ../"$i"        ;;
          *.exe)       cabextract ../"$i"  ;;
          *)           echo-red "extraer: '$i' - formato de arquivo descoñecido" ;;
        esac
        if [ "$#" \> 1 ]; then
          cd ../
        fi
    else
        echo-red "'$i' - o arquivo non existe"
    fi
  done
}