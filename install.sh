sudo apt-get update
sudo apt-get upgrade
#sudo apt-get install default-jdk
#sudo apt-get install unzip
#sudo apt-get install htop
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt install aircrack-ng

npm i -g csvtojson

# node/npm fix
sudo ln -s /usr/bin/nodejs /usr/bin/node

# Make .ivs files from .cap files
ivstools --convert out.cap out.ivs