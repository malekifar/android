#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage
apt update && apt upgrade -y
apt install -y git zsh curl
apt update && curl https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.1-Linux-aarch64.sh --output miniconda.sh && bash ~/miniconda.sh -b -p $HOME/miniconda
echo "zsh" >> /data/data/com.termux/files/usr/etc/bash.bashrc
git clone https://github.com/malekifar/android.git "$HOME/termux-ohmyzsh" --depth 1
mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"
git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold.ttf
echo "export DEFAULT_USER=$(whoami)" >> ~/.zshrc
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
git clone --depth 1 https://github.com/junegunn/fzf.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/.fzf && ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/.fzf/install
git clone git://github.com/wting/autojump.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/autojump && python ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/autojump && echo "source ~/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
git clone https://github.com/b4b4r07/enhancd ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/enhancd && echo "source ~/.oh-my-zsh/custom/plugins/enhancd/init.sh" >> ~/.zshrc
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions && echo "source ~/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh" >> ~/.zshrc
git clone https://github.com/zdharma/fast-syntax-highlighting ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting && echo "source ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc
sed -i 's/plugins=\(.*\)/plugins=\(git docker zsh-completions colored-man-pages fast-syntax-highlighting colorize dash command-not-found\)/g' ~/.zshrc
echo "oh-my-zsh install complete!\nChoose your color scheme now~"
chmod +x /data/data/com.termux/files/home/.termux/colors.sh
$HOME/.termux/colors.sh
exit
exit