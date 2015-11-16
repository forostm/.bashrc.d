# Variables globais
export EDITOR="vim"
export PAGER="less"

# Colorea a saída de less. (require instalar 'source-highlight')
# yaourt -S source-highlight
if [ -f "/usr/bin/source-highlight-esc.sh" ]; then
    export LESS=-R 
    export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
fi

# Bash completion 
# Recoméndase instalar 'bash-completion' que añade moitos autocompletados e ademáis carga automáticamente o contido do directorio '/etc/bash_completion.d'
# yaourt -S bash-completion
# Carga tódolos arquivos no directorio '/etc/bash_completion.d' se existe o directorio pero non está instalado 'bash-completion'
if [[ -d /etc/bash_completion.d && ! -d /usr/share/bash-completion ]]; then
    for i in $(ls /etc/bash_completion.d/)
    do
        . /etc/bash_completion.d/$i
    done
fi

# Paths
if [ -d "$DIR_SCRIPTS" ]; then
  PATH="$PATH:$DIR_SCRIPTS"
fi

if [ -f "/usr/bin/ruby" ]; then
    PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
fi
