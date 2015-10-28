#Función para enviar contido á papeleira de reciclaxe da terminal
rmt() { 
  if [ ! -d $HOME/.local/share/Trash/terminal ]; then
    mkdir $HOME/.local/share/Trash/terminal
  fi
  if [ $# == 0 ]; then
    cd $HOME/.local/share/Trash/terminal
    lsa 
  else
    for i in "$@"
    do
      \mv $i $HOME/.local/share/Trash/terminal;
      echo-blue "'$i' moviuse á papeleira de reciclaxe";
    done
    if [ $# \> 1 ]; then
      echo-magenta "En total moveronse $# elementos á papeleira de reciclaxe"
    fi
  fi
}