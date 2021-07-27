# How to install Termux + Ubuntu + VScode + Anaconda + Git + ZSH
## Table of Contents
- termux 
- ubuntu
- vscode
- anaconda
- andronix

```zsh
termux-change-repo
```
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

Termux | [<img src="https://user-images.githubusercontent.com/86642515/127042621-9a2dfcd9-9559-487c-8f02-06ccc34c63fe.png" target="_blank"  alt="drawing" width="50"/>](https://termux.com/){:target="_blank"} |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=com.termux&hl=en&gl=US)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/termux)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/en/packages/com.termux/)|
|---|---|---|---|---|

UserLAnd | [<img src="https://user-images.githubusercontent.com/86642515/127054474-47bf9941-7349-433e-9f35-0f50addc613b.png"  alt="drawing" width="50"/>](https://userland.tech/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=tech.ula&hl=en&gl=US)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/CypherpunkArmory/UserLAnd)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/packages/tech.ula/)|
|---|---|---|---|---|

VNC Viewer | [<img src="https://user-images.githubusercontent.com/86642515/127055324-11a56ffc-d048-4916-af15-19b9c6c6d993.png"  alt="drawing" width="50"/>](https://www.realvnc.com/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
|---|---|---|

Andronix | [<img src="https://user-images.githubusercontent.com/86642515/127056030-8d40170a-e52d-4b34-9bbd-898e8e779680.png"  alt="drawing" width="50"/>](https://andronix.app/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=studio.com.techriz.andronix)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/AndronixApp/AndronixOrigin)
|---|---|---|---|

AnLinux | [<img src="https://user-images.githubusercontent.com/86642515/127075742-01362e8b-6485-48d1-9da8-8ecfaaff00e6.png"  alt="drawing" width="50"/>](#) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=exa.lnx.a)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/EXALAB/AnLinux-App)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/en/packages/exa.lnx.a/)|
|---|---|---|---|---|


