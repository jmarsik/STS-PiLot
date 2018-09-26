#!/bin/bash

# https://www.raspberrypi.org/forums/viewtopic.php?t=21632
sudo raspi-config nonint do_ssh 1
sudo raspi-config nonint do_i2c 1
sudo raspi-config nonint do_camera 1
sudo raspi-config nonint do_boot_behaviour B2

# not with sudo
curl https://get.pimoroni.com/explorerhat | bash -y

sudo apt-get install mc byobu htop python-picamera python-flask python-gevent python-simplejson

sudo chmod +x autostart.sh
