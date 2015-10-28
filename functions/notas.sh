#Notas
#Se non hai argumentos, amósanse as notas
#Se escribimos calquera outra cousa, añadese unha nota
#Coa opción '-r' podemos eliminar notas
#Coa opción '-r' e mais un número, eliminamos esa nota directamente
#Coa opción '-c'eliminamos tódalas notas
notas() {
  NOTE="$HOME/.notas"

  #Si non existe un arquivo de notas, creao
  if [[ ! -f $NOTE ]]; then
    touch "$NOTE"
  fi

  #Se introduccimos a opción '-r' podemos eliminar notas
  if [ "$1" == "-r" ] && [ -z "$2" ]; then
    nl -b a "$NOTE"
    echo ""
    read -p "Introduce un número para eliminar: " number
    sed -i ${number}d $NOTE
    echo-blue "Eliminada a nota nº ${number}"

  #Se introduccimos a opción '-r' e mais un número, eliminamos esa nota directamente
  elif [ "$1" == "-r" ] && [ -n "$2" ]; then
    sed -i "$2"d $NOTE
    echo-blue "Eliminada a nota nº $2"
  
  #Se introduccimos a opción '-c'eliminamos tódalas notas 
  elif [ "$1" == "-c" ];then
    > $NOTE
    echo-blue "Eliminadas tódalas notas"

  #Se non hai argumentos, amósanse as notas
  elif [ "$#" == "0" ]; then
    nl -b a "$NOTE"
  
  #Se escribimos calquera outra cousa, añadese unha nota
  else
    echo "$*" >> $NOTE
    echo-green "Nota añadida"
  fi 
 }
#Alias para que tamén funcione en singular
alias nota=notas