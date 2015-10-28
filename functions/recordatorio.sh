#Recordatorios.
#uso: recordatorio <tempo> <texto>
#ex.: recordatorio 10m "Comprar pan"
recordatorio() {
    sleep $1 && zenity --info --text "$2"
}