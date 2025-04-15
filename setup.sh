sudo pacman -Syu
clear

#Xorg installation and setup
sudo pacman -S xorg xorg-xinit xorg-server
clear

#Yay installation and setup
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
clear

#Basic installations using yay
yay -S brave-bin google-chrome light zsh-syntax-highlighting
clear

#Basic installations using pacman
sudo pacman -S zsh neovim libreoffice obsidian firefox thunar gparted
sudo pacman -S nitrogen picom slock neofetch unzip npm wget xclip xsel
sudo pacman -S pulseaudio pavucontrol pamixer
clear

#basefiles setup
cp setup/files/.xinitrc .xinitrc
cp setup/files/.bash_profile .bash_profile
cp setup/files/.bashrc .bashrc
cp setup/files/.zshrc .zshrc
cp setup/files/.zprofile .zprofile
cp setup/files/.p10k.zsh .p10k.zsh
sudo cp -r setup/files/anonymouspro /usr/share/fonts/
cd
clear

#dwm installation and setup
cd setup/dwm
sudo make clean install
cd
clear

#dmenu installation and setup
cd setup/dmenu
sudo make clean install
cd
clear

#st installation and setup
cd setup/st
sudo make clean install
cd
clear

#slstatus installation and setup
cd setup/slstatus
sudo make clean install
cd
clear

#neovim-setup installation
git clone https://github.com/jusan00b/kickstart.nvim.git .config/nvim
clear

#MTPFS setup for mounting android device
yay -S mtpfs
mkdir Downloads
cd Downloads
git clone https://aur.archlinux.org/jmtpfs.git
cd jmtpfs
makepkg -si
ls -al
echo "Enter the complete name of the pkg.tar.zst file from the above list: "
read file_name
sudo pacman -U "$file_name"
sudo pacman -Sy gvfs-mtp gvfs-gphoto2
cd
clear

#light setup
sudo pacman -S acpid
sudo systemctl enable acpid
sudo systemctl start acpid
sudo usermod -aG video $(whoami)
journalctl -xe | grep dwm
clear

reboot
