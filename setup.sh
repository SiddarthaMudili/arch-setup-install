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
yay -S vscodium-bin brave-bin google-chrome
clear

#Basic installations using pacman
sudo pacman -S neovim libreoffice thunar gparted neofetch
clear
sudo pacman -S nitrogen picom light pulseaudio pavucontrol
clear

#basefiles setup
git clone https://github.com/jusan00b/Arch-basefiles.git setup/basefiles
cp setup/basefiles/.xinitrc .xinitrc
cp setup/basefiles/.bash_profile .bash_profile
cp setup/basefiles/.bashrc .bashrc
sudo cp -r setup/basefiles/anonymouspro /usr/share/fonts/
clear

#dwm installation and setup
git clone https://github.com/jusan00b/Arch-DWM.git setup/dwm
cd setup/dwm
sudo make clean install
cd
clear

#dmenu installation and setup
git clone https://github.com/jusan00b/Arch-dmenu.git setup/dmenu
cd setup/dmenu
sudo make clean install
cd
clear

#st installation and setup
git clone https://github.com/jusan00b/Arch-st.git setup/st
cd setup/st
sudo make clean install
cd
clear

#slstatus installation and setup
git clone https://github.com/jusan00b/Arch-slstatus.git setup/slstatus
cd setup/slstatus
sudo make clean install
cd
clear

#neovim-setup installation
git clone https://github.com/jusan00b/neovim-setup.git .config/nvim
clear

#MTPFS setup
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
clear
sudo pacman -Sy gvfs-mtp gvfs-gphoto2
cd
clear

