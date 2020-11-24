sudo apt install i3-gaps
sudo apt install ibus-unikey
sudo apt install rofi
sudo apt install polybar
sudo apt install feh
sudo apt install terminator
sudo apt-get install software-properties-common
sudo apt install python3-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo apt install scrot
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

synclient NaturalScrolling=1 VertScrollDelta=-113
sudo chmod a+w /sys/class/backlight/intel_backlight/brightness

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
rofi-theme-selector

#https://cravencode.com/post/essentials/enable-tap-to-click-in-i3wm/
