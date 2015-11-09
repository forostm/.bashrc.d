# Exports
export EDITOR="vim"
export PAGER="less"

# Colorea a saída de less. (require instalar source-highlight)
if [ -f "/usr/bin/source-highlight-esc.sh" ]; then
    export LESS=-R 
    export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
fi

# Paths
PATH="$HOME/scripts:$PATH"
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
