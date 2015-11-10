#Papeleira. Función para xestionar a papeleira de reciclaxe da terminal
#Sen opción entra na papeleira de reciclaxe da terminal e lista o contido
#Coa opción '-l' lista o contido da papeleira de reciclaxe da terminal sen moverse a ela
#Coa opción '-c' limpa a papeleira de reciclaxe da terminal
#Coa opción '-C' limpa a papeleira de reciclaxe da terminal e a do sistema

# Non se crea a función no usuario root
if [ $(echo $USER) == root ]; then 
  trash() {
    if [ "$#" == 0 ]; then #Sen opción, entra na papeleira de reciclaxe da terminal e lista o contido
      cd $HOME/.local/share/Trash/terminal
      lsa 

    elif [ "$1" == "-l" ]; then #Coa opción '-l' lista o contido da papeleira de reciclaxe da terminal
      lsa $HOME/.local/share/Trash/terminal

    elif [ "$1" == "-c" ]; then #Coa opción '-c' limpa a papeleira de reciclaxe da terminal
      if [ -d $HOME/.local/share/Trash/terminal ]; then
        \rm -rf $HOME/.local/share/Trash/terminal/*
        \rm -rf $HOME/.local/share/Trash/terminal/.*
      fi

    elif [ "$1" == "-C" ]; then #Coa opción '-C' limpa a papeleira de reciclaxe da terminal e a do sistema
      \rm -rf $HOME/.local/share/Trash/files/*
      \rm -rf $HOME/.local/share/Trash/files/.*
      \rm -rf $HOME/.local/share/Trash/info/*
      \rm -rf $HOME/.local/share/Trash/info/.*
      if [ -d $HOME/.local/share/Trash/terminal ]; then
        \rm -rf $HOME/.local/share/Trash/terminal/*
        \rm -rf $HOME/.local/share/Trash/terminal/.*
      fi
    fi
  }
fi