# Configuración do prompt
## Colores por equipos

if [ $(hostname) == razzmatazz ]; then
  HOST_COLOR="1;35m"
elif [ $(hostname) == unicorn ]; then
  HOST_COLOR="1;33m"
elif [ $(hostname) == server ]; then
  HOST_COLOR="1;90m"
else
  HOST_COLOR="1;33m"
fi

export PS1='\[\e[1;33m\]\u\[\e[m\]\[\e[1;30m\]@\[\e[m\]\[\e['$HOST_COLOR'\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[1;30m\]\$\[\e[m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;30m\]>\[\e[m\] '

# Benvida
echo -n "Hola $USER, hoxe é "; date '+%A %-d de %B do %Y'
