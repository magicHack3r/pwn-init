#!/bin/sh

# Author; magicHack3r for my own ease.
echo "      
                  _    _  _         _   ____    
  _ __  __ _ __ _(_)__| || |__ _ __| |_|__ /_ _ 
 | '  \/ _\ / _\ | / _| __ / _\ / _| / /|_ \ '_|
 |_|_|_\__,_\__, |_\__|_||_\__,_\__|_\_\___/_|  
            |___/                               

"

echo "Enter setup number you want;"
echo "[1] pwntools"
echo "[2] checksec"
echo "[3] sublime"
echo "[4] exit"
read -p "Number: " number

if [ $number -eq 1 ]; then 
    echo "[+] Setting up pwntools."
    sudo apt-get update
    sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y
    python3 -m pip install --upgrade pip
    python3 -m pip install --upgrade pwntools

elif [ $number -eq 2 ]; then 
    echo "[+] Setting up checksec."
    git clone https://github.com/slimm609/checksec.sh.git
    cd checksec.sh
    cp checksec /usr/local/bin

elif [ $number -eq 3 ]; then
    echo "[+] Setting up sublime."
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-get install apt-transport-https
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list 

else
    echo "quit"
fi

