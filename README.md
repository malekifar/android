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
You may use the following command to launch Android internal file manager which also allows to transfer files between Termux and other storage volumes:
‍‍
```
am start -a android.intent.action.VIEW -d "content://com.android.externalstorage.documents/root/primary"

```
And you can also start the Termux Filepicker too:

```zsh
am start -a android.intent.action.OPEN_DOCUMENT -d /storage/emulated/0 -t '*/*'
```
Alternate way would be direct access to Termux home directory with Superuser permissions. That's possible only on rooted devices. However, using root to work with Termux files is not recommended way as you can easily mess up file access modes and SELinux contexts.
## Linux
### [Method1: PRoot Distro (Recommended)](https://github.com/termux/proot-distro)

## Installing

With package manager:
```zsh
pkg install proot-distro
```

With git:
```zsh
pkg install git
git clone https://github.com/termux/proot-distro
cd proot-distro
./install.sh
```
Usage example:
```zsh
proot-distro install <distribution_name> # (ubuntu,debian,alpine,void,opensuse,fedora,archlinux)
```
Execute a shell within the given distribution. Example:
```zsh
proot-distro login <distribution_name>
```

Execute a shell as specified user in the given distribution:
```zsh
proot-distro login --user admin <distribution_name>
```
Set password for root with
```zsh
passwd
```
Add user with 
```zsh
adduser <user_name>
```

### [Method2: AnLinux](https://github.com/EXALAB/AnLinux-App)
AnLinux | <img src="https://user-images.githubusercontent.com/86642515/127075742-01362e8b-6485-48d1-9da8-8ecfaaff00e6.png"  alt="drawing" width="50"/>|[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=exa.lnx.a)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/EXALAB/AnLinux-App)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/en/packages/exa.lnx.a/)|
|---|---|---|---|---|
### [Method3: Andronix](https://github.com/AndronixApp/AndronixOrigin)
Andronix | [<img src="https://user-images.githubusercontent.com/86642515/127056030-8d40170a-e52d-4b34-9bbd-898e8e779680.png"  alt="drawing" width="50"/>](https://andronix.app/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=studio.com.techriz.andronix)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/AndronixApp/AndronixOrigin)
|---|---|---|---|
### [Method4: UserLAnd](https://github.com/CypherpunkArmory/UserLAnd)
UserLAnd | [<img src="https://user-images.githubusercontent.com/86642515/127054474-47bf9941-7349-433e-9f35-0f50addc613b.png"  alt="drawing" width="50"/>](https://userland.tech/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=tech.ula&hl=en&gl=US)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/CypherpunkArmory/UserLAnd)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/packages/tech.ula/)|
|---|---|---|---|---|
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
## Python
### Add PPA for Python old versions
The old versions of Python such as 3.9, 3.8, 3.7, and older are not available to install using the default system repository of Ubuntu 22.04 LTS Jammy JellyFish or 20.04 Focal Fossa. Hence, we need to add a PPA offered by the “deadsnakes” team to get the old archived Python versions easily.
```zsh
apt update && apt upgrade
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
```
### Installing python(version)
Well, once you have confirmed the version you want of Python is available to install using the added repository, next use the given command syntax to install it.

For example, you want to install version 3.7 to 3.10
```zsh
apt install python3.10
```
```zsh
apt install python3.9
```
```zsh
apt install python3.8
```
```zsh
apt install python3.7
```
### Set the default Python version
If you have installed multiple versions of Python and want to set any of them as the default version of the system then that can be possible as well. For example, you have the latest version of Python 3.10 (was while doing this article) and also have installed python 3.9 and 3.8; now to set any of them are system’s default use Update-alternatives command:

Check what python versions are available on your systems:
```zsh
ls /usr/bin/python*
```
To know whether any version is configured as python alternatives or not. For that run:
```zsh
update-alternatives --list python
```
If the output is:

“update-alternatives: error: no alternatives for python”

Then it means there are no alternatives that have been configured, hence let’s do some.

Here we are setting up two versions as alternatives, later we will be able to choose between them to set one of them as the system default one.
```zsh
update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
```
```zsh
update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2
```
```zsh
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 3
```
```zsh
update-alternatives --install /usr/bin/python python /usr/bin/python3.7 4
```
### Switch the default Python version 
```zsh
update-alternatives --config python
```
This time you will see several options including Python 3.10 and 3.9 and 3.8 and 3.7. Enter the Selection number of the Python you want to set as the system’s default one. For example, here Python3.7 is at number 4, hence we type 4 and Enter key.\
When you check the version of Python this time, you will have 3.7. For that use:
```zsh
python -V
```
## Jupyter

## VSCode

### [Method1: VHEditor](https://github.com/vhqtvn/VHEditor-Android)

This is a alternative for VSCode
You can download from [here](https://github.com/vhqtvn/VHEditor-Android/releases) \
Built-in terminal in editor not show anything \
For fix this: Change VSCode's setting "Terminal > Integrated > Gpu Acceleration" to off or canvas.\

### [Method2: Using Code Server](https://github.com/coder/code-server)
```zsh
pkg install proot-distro
proot-distro install Ubuntu
proot-distro login Ubuntu
pkg update
pkg install wget
wget https://github.com/coder/code-server/releases/download/v4.4.0/code-server-4.4.0-linux-arm64.tar.gz
tar -xvf code-server-4.4.0-linux-arm64.tar.gz
cd code-server-4.4.0-linux-arm64
cd bin
export PASSWORD="12345"
./code-server
```
Then open your browser minimizing the termux and search on the Google search bar\
http://127.0.0.1:8080
Termux | [<img src="https://user-images.githubusercontent.com/86642515/127042621-9a2dfcd9-9559-487c-8f02-06ccc34c63fe.png" target="_blank" rel="noopener" alt="drawing" width="50"/>](https://termux.com/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=com.termux&hl=en&gl=US)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/termux)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/en/packages/com.termux/)|
|---|---|---|---|---|



VNC Viewer | [<img src="https://user-images.githubusercontent.com/86642515/127055324-11a56ffc-d048-4916-af15-19b9c6c6d993.png"  alt="drawing" width="50"/>](https://www.realvnc.com/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
|---|---|---|





Material Files | [<img src="https://user-images.githubusercontent.com/86642515/127233274-8c712c81-5366-414d-a541-080afc9a7e04.png" target="_blank" rel="noopener" alt="drawing" width="50"/>](#) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=me.zhanghai.android.files&hl=en&gl=US)|[<img src="https://user-images.githubusercontent.com/86642515/127042978-87c1d67c-e838-418b-b654-7e1413ebb66a.png"  alt="drawing" width="50"/>](https://github.com/zhanghai/MaterialFiles)|[<img src="https://user-images.githubusercontent.com/86642515/127042295-bb671f10-8a32-4b95-a82f-ba0aa3c1e26e.png"  alt="drawing" width="50"/>](https://f-droid.org/packages/me.zhanghai.android.files/)|
|---|---|---|---|---|

	
FX File Explorer | [<img src="https://user-images.githubusercontent.com/86642515/127250698-ca2e1bb8-8a44-4d5e-bf02-3a80d4f0a953.png" target="_blank" rel="noopener" alt="drawing" width="50"/>](http://www.nextapp.com/fx/) |[<img src="https://user-images.githubusercontent.com/86642515/127040741-18c22208-bde1-455c-af11-68abcac22959.png"  alt="drawing" width="50"/>](https://play.google.com/store/apps/details?id=nextapp.fx&hl=en&gl=US)
|---|---|---|


