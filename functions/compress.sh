# Funcións para comprimir

alias comprimir="compress"
alias mktar="compress_tar"
alias mktargz="compress_targz"
alias mkzip="compress_zip"

compress() {
  if [ -z "$1" ]; then
    echo-blue "Uso: compress <tar|targz|zip> <directorio/nome_arquivo>"
  fi
  case "$1" in 
    tar) compress_tar ${@:2};;
    targz) compress_targz ${@:2};;
    zip) compress_zip ${@:2};;
    *) compress_generic $@;;
  esac
}

function compress_generic {
  compress_tar
}

function compress_tar {
  for i in "$@"
  do
    tar cvf "${i%%/}.tar" "${i%%/}/"
  done
}

function compress_targz {
  for i in "$@"
  do
    tar cvfz "${i%%/}.tar.gz" "${i%%/}/"
  done
}

function compress_zip {
  for i in "$@"
  do
    zip -r "${i%%/}.zip" "${i%%/}"
  done
}