#Función para enviar contido á papeleira de reciclaxe da terminal
rmt() { 
  if [ ! -d $HOME/.local/share/Trash/terminal ]; then
    mkdir $HOME/.local/share/Trash/terminal
  fi

  for i in "$@"
  do
    \mv $i $HOME/.local/share/Trash/terminal;
    echo-blue "'$i' moviuse á papeleira de reciclaxe";
  done
  if [ $# \> 1 ]; then
    echo-red "En total moveronse $# elementos á papeleira de reciclaxe"
  fi
}