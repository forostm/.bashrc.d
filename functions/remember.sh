# Recordatorios.
#uso: recordatorio <tempo> <texto>
#ex.: recordatorio 10m "Comprar pan"

alias recodatorio="remember"
alias aviso="remember"
alias alarma="remember"

remember() {
if [[ -z "$1" || "$1" == "-h" || "$1" == "--help" ]]; then
  remember_manual
else
  $(sleep $1 && zenity --info --text "$2") &
fi
}

function remember_manual {
  echo "Recordatorios."
  echo "Uso: remember <tempo> <texto>"
  echo "Exemplo: remember 10m 'Comprar pan'"
  echo "Alias: remember/recordatorio/aviso/alarma "
  echo "Axuda: remember -h (--help)"
  echo ""
}