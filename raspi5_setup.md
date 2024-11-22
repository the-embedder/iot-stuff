# Harware list

* Raspberry Pi 5 with 8 GB RAM
* 1 TB M.2 NVMe SSD
* Argon NEO 5 M.2 NVME PCIE Case for Raspberry Pi 5
* Raspberry Pi 27 W power supply

# Network connections

* Wired ethernet connection to the home network
* WiFi connection to the private IoT network

# Setup of OS

* Use the official Raspberry Pi Imager from https://www.raspberrypi.com/software/
* Create a temporary OS installation on a USB stick for preparing the SSD
* Update the bootloader, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#update-the-bootloader
* Enable NVMe SSD boot, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#nvme-ssd-boot
* Edit the bootloader configuration, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#raspberry-pi-bootloader-configuration
* Install Raspberry Pi OS Lite (bookworm) on the SSD

# To-dos

* Install aptitude & mc
* Install Docker Engine according to https://docs.docker.com/engine/install/debian/#install-using-the-repository
* Install influxdb v2 with docker, https://hub.docker.com/_/influxdb
* Install grafana with docker
* Research Eclipse Mosquitto, https://hub.docker.com/_/eclipse-mosquitto
* Research Home Assistant

# Interesting raspi commands

vcgencmd measure_temp
vcgencmd bootloader_version
apt install rpi-eeprom
sudo raspi-config
sudo rpi-eeprom-update
sudo rpi-eeprom-update -a
rpi-eeprom-config
sudo -E rpi-eeprom-config --edit
sudo reboot
sudo systemctl unmask rpi-eeprom-update
nano /etc/default/rpi-eeprom-update
