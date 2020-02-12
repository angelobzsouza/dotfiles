# VSCode
snap install --classic code

#Curl
apt install curl

#ZSH and Oh My ZSH
apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
apt install fonts-powerline
rm ~/.zshrc && echo ".zshrc successfully removed"
ln -s ~/dotfiles/zsh/.zshrc .zshrc && echo "symbol link to .zshrc created"
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins

#Mongo DB
apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list #Just for Ubuntu 18.04
apt-get update
apt-get install -y mongodb-org

#DBeaver
snap install dbeaver-ce

#Postman
snap install postman

#Slack
snap install slack --classic

#NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

#Docker
apt update
apt install apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt install docker-ce

# chsh -s $(which zsh) // Command that are not working in script
