sudo apt install i3-gaps
sudo apt install ibus-unikey
sudo apt install rofi
sudo apt install polybar
sudo apt install feh
sudo apt install terminator
sudo apt-get install software-properties-common
sudo apt install python3-pip
sudo apt install open-vm-tools-desktop
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo apt install scrot
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


synclient NaturalScrolling=1 VertScrollDelta=-113
sudo chmod a+w /sys/class/backlight/intel_backlight/brightness
sleep(1)
cd $HOME

git clone https://github.com/adi1090x/polybar-themes

cd polybar-themes/polybar-2
cp -r fonts/* ~/.local/share/fonts
fc-cache -v

# delete current font config (to be able to display bitmap fonts)
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf

# copy everything from polybar-1 to polybar config dir (backup your config first if you have)
cp -r * ~/.config/polybar

# run launch.sh 
~/.config/polybar/launch.sh

cd $HOME 


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

chmod +x ~/.config/polybar
chmod +x ~/.config/polybar/scripts/*


cd $HOME 
wget https://wallpaperaccess.com/download/4k-minimalist-160352 >> ~/Desktop/wallpaper.png

cp -r ~/Desktop/i3config_bla_bla/i3/* ~/.config/i3/*
cp -r ~/Desktop/i3config_bla_bla/polybar/* ~/.config/polybar/*
cp -r ~/Desktop/i3config_bla_bla/rofi/*  ~/.config/rofi/*


#https://cravencode.com/post/essentials/enable-tap-to-click-in-i3wm/

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection

EOF


