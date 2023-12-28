#Basic installations using pacman
sudo pacman -S xorg xorg-xinit
sudo pacman -S neovim libreoffice thunar gparted
sudo pacman -S nitrogen picom light

#Yay installation and setup
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#Basic installations using yay
yay -S vscodium-bin brave-bin google-chrome-stable

#MTPFS setup
yay -S mtpfs
cd Downloads
git clone https://aur.archlinux.org/jmtpfs.git
cd jmtpfs
makepkg -s
sudo pacman -U jmtpfs*.tar.xz
sudo pacman -Sy gvfs-mtp gvfs-gphoto2
cd

#basefiles setup
git clone git@github.com:jusan00b/Arch-basefiles.git setup/basefiles
cp setup/basefiles/.xinitrc .xinitrc
cp setup/basefiles/.xinitrc .bash_profile
cp setup/basefiles/.xinitrc .bashrc
cp setup/basefiles/anonymouspro /usr/share/fonts/anonymouspro

#dwm installation and setup
git clone git@github.com:jusan00b/Arch-DWM.git setup/dwm
cd setup/dwm
sudo make clean install
cd

#dmenu installation and setup
git clone git@github.com:jusan00b/Arch-dmenu.git setup/dmenu
cd setup/dmenu
sudo make clean install
cd

#st installation and setup
git clone git@github.com:jusan00b/Arch-st.git setup/st
cd setup/st
sudo make clean install
cd

#slstatus installation and setup
git clone git@github.com:jusan00b/Arch-slstatus.git setup/slstatus
cd setup/slstatus
sudo make clean install
cd

#neovim-setup installation
git clone git@github.com:jusan00b/neovim-setup.git .config/nvim

reboot

