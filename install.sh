mkdir -p ~/Documents/.dotfiles && cp -r . ~/Documents/.dotfiles
cd ~/Documents/.dotfiles
ln -s ~/Documents/.dotfiles/.zshrc ~/.zshrc
ln -s ~/Documents/.dotfiles/.gitconfig ~/.gitconfig

git clone https://github.com/pwndbg/pwndbg.git .
cd pwndbg
./setup.sh

sudo gpasswd -a $USER input
sudo pacman -S xdotool libinput-gestures
ln -s libinput-gestures.conf ~/.config/libinput-gestures.conf
libinput-gestures-setup stop desktop autostart start
