#Bak. Función para crear copias de seguridad de un archivo eliminando primeiro a antiga
#Coa opción '-f' creamos unha copia de seguridade e eliminamos o orixinal
#Coa opción '-r' restauramos unha copia de seguridade (podes escribir o nome con ou sen a extensión .bak)

bak() {
  if [ "$1" == "-f" ]; then #Añadindo a opción '-f' creamos unha copia de seguridade e eliminamos o orixinal
    for i in "${@:2}"
    do
      bak_hardcopy &&
      echo-green "Creada copia de seguridade de '$i' e eliminado o orixinal"
    done
    
  elif [ "$1" == "-r" ]; then #Coa opción '-r' restauramos unha copia de seguridade (podes escribir o nome con ou sen a extensión .bak)
    for i in "${@:2}"
    do
      FILENAME=${i%.bak}
      EXTENSION=${i##*.}
      if [ -f "$FILENAME" -o -d "$FILENAME" ]; then
        bak_restore_overwrite
      else
        bak_restore
      fi
    done
  elif [ -z "$1" ]; then
    echo "Introduce un ou varios arquivos/directorios para crear unha copia de seguridade."

  else
    for i in "$@"
    do
      bak_simplecopy &&
      echo-green "Creada copia de seguridade de '$i'"
    done
  fi

 }

bak_simplecopy() {
  if [ -f "$i".bak -o -d "$i".bak ] && [ ! -f "$i" -o ! -d "$i" ]; then #O segundo condicional é para evitar borrar copias sen ter o orixinal
    \rm -rf "$i.bak" &&
    echo-blue "Eliminada copia antiga de '$i'"
  fi
  \cp -r "$i" "$i.bak"
 }

bak_hardcopy() {
  bak_simplecopy &&
  \rm -rf "$i"
}

bak_restore() {
  if [ "$EXTENSION" == "bak" ]; then
    \mv "$i" "$FILENAME"
  else
    \mv "$i".bak "$FILENAME"
  fi
  echo-green "Restaurada correctamente a copia de seguridade de '$FILENAME'"
}
bak_restore_overwrite() {
  echo-yellow "ATENCIÓN: Vas sobreescribir o orixinal de '$i'"
  read -p "¿Estás seguro de que queres continuar? (S)i, (N)on: " ANSWER1
  case $ANSWER1 in
    [SsYy]* ) \rm -rf $FILENAME && bak_restore;;
    [Nn]* ) ;;
    * ) echo-blue "Inténtao de novo" && bak_restore_overwrite;;
  esac
}