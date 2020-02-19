# DOTFILES

My configuration files for:
~/.zshrc
.gitignore
.editorconfig

### SETUP SCRIPT

The setup.sh download and install what I need to work. It's used to make life easier when I install or reboot ubuntu in my machine. To execute, paste it in the pc root folder and:
```sh
chmod 777 setup.sh
sudo ./setup.sh
```

### START PROJECT
The start project script create a folder in the arg path and copy some initial files to it. To use, execute:
```sh
chmod 777 setup.sh 
sudo ./init-project.sh ~/path
```
