sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-dev.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-dev.gpg add -

source /etc/os-release

echo "deb [arch=amd64] https://brave-browser-apt-dev.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-dev-${UBUNTU_CODENAME}.list

sudo apt update

sudo apt install brave-browser-dev