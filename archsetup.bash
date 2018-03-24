if [ "$EUID" -ne 0 ]
    then echo "Please run script with sudo"
    exit
fi
user=$SUDO_USER
mkdir /home/$user/.config/nvim
cd /home/$user/.config/nvim
echo "#Config file for neo vim" > init.vim
sudo pacman -S neovim --noconfirm
sudo easy_install pip
sudo pip install neovim 
sudo pacman -S git
mkdir -p /home/$user/.vim/autoload
curl -fLo /home/$user/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim