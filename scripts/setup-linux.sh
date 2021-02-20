# VSCode
snap install --classic code

#Curl
apt install curl

#ZSH and Oh My ZSH
apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
apt install fonts-powerline
rm ~/.zshrc && echo ".zshrc successfully removed"
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc && echo "symbol link to .zshrc created"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#DBeaver
snap install dbeaver-ce

#Postman
snap install postman

#Spotify
snap install spotify

#Slack
snap install slack --classic

#Docker
apt update
apt install apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt install docker-ce

#Docker Composer
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
