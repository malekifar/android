# # How to install Termux + Ubuntu + VScode + Anaconda + Git + ZSH
## Table of Contents
- termux 
- ubuntu
- vscode
- anaconda
- andronix
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
apt-get update && apt-get install zsh -y
```
### Installing [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
Now we can install oh-my-zsh
```zsh
apt install curl -y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
###### [PowerLevel10K](https://github.com/romkatv/powerlevel10k)(recommended)
- Installing
```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- Enabling
```zsh
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc && exit
```
- Configuring
To run Powerlevel10k configuration wizard again, type the following commands:
```zsh
p10k configure
```
[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png">](https://play.google.com/store/apps/details?id=com.termux&hl=en&gl=US)
|Termux| ![Play Store](![image](https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png)
|F-Droid|
|---|---|---|
