# Función para conxelar o estado de un arquivo/ficheiro nun momento dado

ice() {
  for i in "$@"
  do
   tar -cvf "$i"_`date +%d-%m-%Y_%H.%M.%S`.tar "$i";
  done
}