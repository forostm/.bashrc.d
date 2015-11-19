# Configuración
shopt -s autocd                   #Entra automáticamente nos directorios sin ter que escribir 'cd'
shopt -s cdable_vars              #Se introduces un ficheiro co comando 'cd', levate ó directorio que o contén
shopt -s cdspell                  #Co comando 'cd' corrixe automáticamente pequenos erros no nome dos directorios
shopt -s dirspell                 #Parecido ó anterior
shopt -s checkwinsize             #Reaxusta as columnas cando cambia o ancho da ventá
shopt -s cmdhist                  #Intenta gardar os comandos multilinea nunha soa entrada do historial, así é mais sinxelo velver a usalos
shopt -s histappend               #Añade contido ó historial, non o sobreescribe
complete -cf sudo                 #Autocompletado tamén co comando 'sudo'

HISTCONTROL=ignoredups:erasedups  #Se entradas duplicadas
HISTSIZE=100000                   #Tamaño de historial grande
HISTFILESIZE=100000               #Tamaño de historial grande
