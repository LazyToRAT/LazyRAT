#!/bin/bash
clear
echo "
 _           ___   ______ __    __  _____        ___   _____  
| |         /   | |___  / \ \  / / |  _  \      /   | |_   _| 
| |        / /| |    / /   \ \/ /  | |_| |     / /| |   | |   
| |       / / | |   / /     \  /   |  _  /    / / | |   | |   
| |___   / /  | |  / /__    / /    | | \ \   / /  | |   | |   
|_____| /_/   |_| /_____|  /_/     |_|  \_\ /_/   |_|   |_|   
 _____   _____   _____   _       _____  
|_   _| /  _  \ /  _  \ | |     /  ___/ 	Tools By : LazyRAT
  | |   | | | | | | | | | |     | |___  
  | |   | | | | | | | | | |     \___  \ 
  | |   | |_| | | |_| | | |___   ___| | 
  |_|   \_____/ \_____/ |_____| /_____/              

                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/LazyRAT" ] ;
then
echo "[◉] A directory LazyRAT was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/LazyRAT"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/LazyToRAT/LazyRAT.git /usr/share/doc/LazyRAT;
 echo "#!/bin/bash 
 python /usr/share/doc/LazyRAT/LazyRAT.py" '${1+"$@"}' > LazyRAT;
 chmod +x LazyRAT;
 sudo cp LazyRAT /usr/bin/;
 rm LazyRAT;


if [ -d "/usr/share/doc/LazyRAT" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute tool by typing LazyRAT  !     ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
