# Función para crear novos arquivos

alias novo='new'
alias nova='new'

new() {
  if [ -n "$2" ]; then
    NAME="$2"
  fi
  
  case $1 in
    bash | script)  new_bashscript ;;
    web | website)  new_web ;;
  esac
  
  unset NAME
}

function new_bashscript {
  if [ -n "$NAME" ]; then
    FINAL_NAME="$NAME"
  else
    FINAL_NAME="script"
  fi
  
  if [ -f "$FINAL_NAME.sh" ]; then
    echo "O arquivo $FINAL_NAME.sh xa existe."
    read -p "¿Queres sobreescribilo? (S)i / (N)on: " ANSWER
    
    case $ANSWER in
      [SsYy]) \rm -rf ./$FINAL_NAME; \cp "$(xdg-user-dir TEMPLATES)/script.sh" "./$FINAL_NAME.sh"; echo "Sobreescribiuse o script en bash: '$FINAL_NAME.sh'" ;;
      [Nn]) ;;
    esac
    
  else
  
    \cp "$(xdg-user-dir TEMPLATES)/script.sh" "./$FINAL_NAME.sh"
    echo "Creado novo script en bash: '$FINAL_NAME.sh'"
    
  fi
  
  unset FINAL_NAME
}

function new_web {
  if [ -n "$NAME" ]; then
    FINAL_NAME="$NAME"
  else
    FINAL_NAME="web"
  fi
  
  if [ -d "$FINAL_NAME" ]; then
    echo "O directorio $FINAL_NAME xa existe."
    read -p "¿Queres sobreescribilo? (S)i / (N)on: " ANSWER

    case $ANSWER in
      [SsYy]) \rm -rf ./$FINAL_NAME; \cp -r "$(xdg-user-dir TEMPLATES)/web" "./$FINAL_NAME"; echo "Sobreescribiuse o sitio web: '$FINAL_NAME'" ;;
      *) ;;
    esac

  else

    \cp -r "$(xdg-user-dir TEMPLATES)/web" "./$FINAL_NAME"
    echo "Creouse o sitio web: '$FINAL_NAME'"

  fi

unset FINAL_NAME
}