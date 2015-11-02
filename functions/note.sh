#Notas
#Se non hai argumentos, amósanse as notas
#Se escribimos calquera outra cousa, añadese unha nota
#Coa opción '-r' podemos eliminar notas
#Coa opción '-r' e mais un número, eliminamos esa nota directamente
#Coa opción '-c'eliminamos tódalas notas

alias nota="note"
alias notas="note"
alias notes="note"

note() {
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
    \rm $NOTE
    echo-blue "Eliminadas tódalas notas"
    
  #Se introduccimos a opción '-c'eliminamos tódalas notas 
  elif [[ "$1" == "-h" || "$1" == "--help" ]];then
    note_manual

  #Se non hai argumentos, anósanse as notas
  elif [ "$#" == "0" ]; then
    nl -b a "$NOTE"
  
  #Se escribimos calquera outra cousa, añadese unha nota
  else
    echo "$*" >> $NOTE
    echo-green "Nota añadida"
  fi 
 }

function note_manual {
    echo "Notas simples."
    echo "Uso: note (Amosa tódalas notas)"
    echo "Uso: note <texto> (Escribe unha nota nova)"
    echo "Uso: note <argumento>"
    echo "Exemplo: nota Comprar pan (Crea unha nota: 'Comprar pan')"
    echo "Alias: note/notes/nota/notas"
    echo "Axuda: note -h (--help)"
    echo ""
    echo "Argumentos:"
    echo "  -r              Eliminar notas"
    echo "  -r + <número>   Eliminamos a nota número <numero> directamente"
    echo "  -c              Eliminamos tódalas notas"
    echo ""
}