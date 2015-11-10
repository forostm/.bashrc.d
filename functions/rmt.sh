# Función para enviar contido á papeleira de reciclaxe da terminal

# Non se crea a función no usuario root
if [ ! $(echo $USER) == root ]; then 
  rmt() { 
    if [ ! -d $HOME/.local/share/Trash/terminal ]; then
      mkdir $HOME/.local/share/Trash/terminal
    fi
    
    REMOVED_ITEMS=0

    for i in "$@"
    do
      \mv $i $HOME/.local/share/Trash/terminal && \
      echo-blue "'$i' moviuse á papeleira de reciclaxe" && \
      ((REMOVED_ITEMS++))
    done
    if [ $# \> 1 ]; then
      echo-red "En total moveronse $REMOVED_ITEMS elementos á papeleira de reciclaxe"
    fi
  }
fi