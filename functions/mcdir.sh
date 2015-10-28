#Función que crea un directorio e entra nel
mcdir() {
  mkdir -pv "$1"
  cd "$1"
}