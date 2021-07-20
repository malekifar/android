# # How to install Termux + Ubuntu + VScode + Anaconda + Git + ZSH
## Table of Contents
- termux
- ubuntu
- vscode
- anaconda
- 
## [Git](https://github.com/git/git)
Install Git using apt-get:
```zsh
apt-get update -y && apt-get install git -y
```
## [ZSH](https://github.com/zsh-users/zsh)
### Installing
Type the following commands to update apt and install zsh then press Enter:
```zsh
apt-get update && apt-get install zsh
```
### Installing [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
Now we can install oh-my-zsh
```zsh
apt install curl && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
