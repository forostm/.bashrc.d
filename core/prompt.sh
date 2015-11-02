# Configuración do prompt
export PS1='\[\e[1;33m\]\u\[\e[m\]\[\e[1;30m\]@\[\e[m\]\[\e[1;33m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[1;30m\]\$\[\e[m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;30m\]>\[\e[m\] '

# Benvida
echo -n "Hola $USER, hoxe é "; date '+%A %-d de %B do %Y'
