# Funcións para amosar o comando 'echo' coloreado
echo-black() { echo -e "\e[30m$@\e[m"; }
echo-red() { echo -e "\e[31m$@\e[m"; }
echo-green() { echo -e "\e[32m$@\e[m"; }
echo-yellow() { echo -e "\e[33m$@\e[m"; }
echo-blue() { echo -e "\e[34m$@\e[m"; }
echo-magenta() { echo -e "\e[35m$@\e[m"; }
echo-cyan() { echo -e "\e[36m$@\e[m"; }
echo-lightgrey() { echo -e "\e[37m$@\e[m"; }
echo-darkgrey() { echo -e "\e[90m$@\e[m"; }
echo-lightred() { echo -e "\e[91m$@\e[m"; }
echo-lightgreen() { echo -e "\e[92m$@\e[m"; }
echo-lightyellow() { echo -e "\e[93m$@\e[m"; }
echo-lightblue() { echo -e "\e[94m$@\e[m"; }
echo-lightmagenta() { echo -e "\e[95m$@\e[m"; }
echo-lightcyan() { echo -e "\e[96m$@\e[m"; }
echo-white() { echo -e "\e[97m$@\e[m"; }
 
echo-b-black() { echo -e "\e[40m$@\e[m"; }
echo-b-red() { echo -e "\e[41m$@\e[m"; }
echo-b-green() { echo -e "\e[42m$@\e[m"; }
echo-b-yellow() { echo -e "\e[43m$@\e[m"; }
echo-b-blue() { echo -e "\e[44m$@\e[m"; }
echo-b-magenta() { echo -e "\e[45m$@\e[m"; }
echo-b-cyan() { echo -e "\e[46m$@\e[m"; }
echo-b-lightgrey() { echo -e "\e[47m$@\e[m"; }
echo-b-darkgrey() { echo -e "\e[100m$@\e[m"; }
echo-b-white() { echo -e "\e[107m$@\e[m"; }