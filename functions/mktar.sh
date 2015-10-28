#Funcións para comprimir
mktar() { 
  for i in "$@"
  do
    tar cvf "${i%%/}.tar" "${i%%/}/"
  done
}

mktargz() { 
  for i in "$@"
  do
    tar cvfz "${i%%/}.tar.gz" "${i%%/}/"
  done
}