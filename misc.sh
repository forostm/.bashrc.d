# Exports
export EDITOR="vim"

# Colorea a saída de less. (require instalar source-highlight)
if [ -f "/usr/bin/source-highlight-esc.sh" ]; then
    export LESS=-R 
    export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
fi