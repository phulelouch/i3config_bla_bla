# i3config_bla_bla
My config and more of some other people for me to look to change in the future
The idea here is, I just need to run ./NOTE.sh and copy the new i3 config and rofi file, everything will be set as I use to


First, we will write a script that generates a list of installed applications on your current Linux system:

#!/bin/bash
dpkg --get-selections | grep -v deinstall > installed_packages.txt

The second script is for the new Linux system where you want to install the applications. This script will read the file generated by the first script and install all the packages listed there. 

#!/bin/bash
sudo dpkg --set-selections < installed_packages.txt
sudo apt-get dselect-upgrade

