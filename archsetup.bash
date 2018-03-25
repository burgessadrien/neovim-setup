user=$USER
mkdir /home/$user/.config/nvim
cd /home/$user/.config/nvim
echo  > init.vim
sudo pacman -S neovim --noconfirm
sudo easy_install pip
sudo pip install neovim 
sudo pacman -S git
sudo mkdir ~/.vim/plugged
#run next command manually
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
