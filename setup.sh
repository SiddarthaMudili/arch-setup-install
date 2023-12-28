sudo pacman -Syu
clear

#Basic installations using pacman
sudo pacman -S xorg xorg-xinit
clear
sudo pacman -S neovim libreoffice thunar gparted
clear
sudo pacman -S nitrogen picom light pulseaudio pavucontrol
clear

#Yay installation and setup
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
clear

#Basic installations using yay
yay -S vscodium-bin brave-bin google-chrome-stable
clear

#MTPFS setup
yay -S mtpfs
cd Downloads
git clone https://aur.archlinux.org/jmtpfs.git
cd jmtpfs
makepkg -s
sudo pacman -U jmtpfs*.tar.xz
clear
sudo pacman -Sy gvfs-mtp gvfs-gphoto2
cd
clear

#basefiles setup
git clone git@github.com:jusan00b/Arch-basefiles.git setup/basefiles
cp setup/basefiles/.xinitrc .xinitrc
cp setup/basefiles/.xinitrc .bash_profile
cp setup/basefiles/.xinitrc .bashrc
cp setup/basefiles/anonymouspro /usr/share/fonts/anonymouspro
clear

#dwm installation and setup
git clone git@github.com:jusan00b/Arch-DWM.git setup/dwm
cd setup/dwm
sudo make clean install
cd
clear

#dmenu installation and setup
git clone git@github.com:jusan00b/Arch-dmenu.git setup/dmenu
cd setup/dmenu
sudo make clean install
cd
clear

#st installation and setup
git clone git@github.com:jusan00b/Arch-st.git setup/st
cd setup/st
sudo make clean install
cd
clear

#slstatus installation and setup
git clone git@github.com:jusan00b/Arch-slstatus.git setup/slstatus
cd setup/slstatus
sudo make clean install
cd
clear

#neovim-setup installation
git clone git@github.com:jusan00b/neovim-setup.git .config/nvim
clear

reboot

