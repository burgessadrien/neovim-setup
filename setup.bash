if [ "$EUID" -ne 0 ]
    then echo "Please run script with sudo"
    exit
fi
user=who am i | awk '{print $1}'
mkdir /home/$user/.config/nvim
cd /home/$user/.config/nvim
echo "#Config file for neo vim" > init.vim
pacman -S neovim --noconfirm
easy_install pip
pip install neovim