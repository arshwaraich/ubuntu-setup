#Manual setup steps
# - Connect to wifi
# - (sudo) Get this file, chmod +x and run it
#	wget https://raw.githubusercontent.com/arshwaraich12/ubuntu-setup/master/init.sh; chmod +x init.sh; ./init.sh
# - Brave install gnome-shell and enable user themes
# - Gnome tweak tool setup
#	- Set icon/themes/extensions
#	- Font 1.05
# - Put dock to bottom and authide in settings

#Apt setup
sudo add-apt-repository universe;
sudo apt update;

#Set wallpaper
gsettings set org.gnome.desktop.background picture-uri https://arshwaraich.com/public/wp2324440.jpg;

#Download git
sudo apt -y install git;
git config --global user.email "arshwaraich12@gmail.com";
git config --global user.name "arshwaraich12@gmail.com";

#Set up folder structure
mkdir ~/Desktop/Code;

#Set up init git repo
git clone https://github.com/arshwaraich12/ubuntu-setup.git ~/Desktop/Code/ubuntu-setup;

#Install Brave
sudo ~/Desktop/Code/ubuntu-setup/installBrave.sh

#Install github desktop
sudo ~/Desktop/Code/ubuntu-setup/installGithubDesktop.sh

#Download VSCode
sudo snap install --classic code;

#Download NodeJs
sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#Download Angular
sudo npm install -g @angular/cli;

#Download pip
sudo apt -y install python-pip;
sudo apt -y install python3-pip;

#Set themes
#Cursor theme:
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine;
sudo apt update;
sudo apt -y install la-capitaine-cursor-theme;
#Icon theme
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons/la-capitaine-icon-theme;
#Shell theme
git clone https://github.com/mythio/macterial.git ~/.themes/macterial
#Set up gnome tweak tool
sudo apt install gnome-tweaks;
sudo apt-get -y install chrome-gnome-shell;
brave-browser https://extensions.gnome.org/extension/19/user-themes/;
gnome-tweaks;

#Clean up
sudo apt-get -y remove ubuntu-web-launchers
