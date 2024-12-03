# Hardware list

* Raspberry Pi 5 with 8 GB RAM, https://www.raspberrypi.com/products/raspberry-pi-5/
* Argon NEO 5 M.2 NVMe PCIe Case for Raspberry Pi 5, https://argon40.com/products/argon-neo-5-m-2-nvme-for-raspberry-pi-5
* Western Digital WD Blue SN580 1 TB M.2 NVMe SSD, https://www.westerndigital.com/en-ap/products/internal-drives/wd-blue-sn580-nvme-ssd?sku=WDS100T3B0E-00CHF0
* Raspberry Pi 27W USB-C Power Supply, https://www.raspberrypi.com/products/27w-power-supply/
* USB Type-C Enclosure for M.2 NVMe SSD, https://icybox.de/product/externe_speicherloesungen/IB-1817M-C31

# Setup of the OS

* Use the official Raspberry Pi Imager from https://www.raspberrypi.com/software/
* Create a temporary OS installation on a USB stick for preparing the SSD
* Update the bootloader, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#update-the-bootloader
* Enable NVMe SSD boot, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#nvme-ssd-boot
  * Not working due to some incompatibility (probably due to PCIe power management; to be researched later); using USB enclosure instead
* Edit the bootloader configuration, https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#raspberry-pi-bootloader-configuration
* Install Raspberry Pi OS Lite (bookworm) on the SSD

# Network connections

* Can be edited with `nmtui-edit`
* Wired ethernet connection to the home network
* WiFi connection to the private IoT network

# Additional software

* Install `aptitude` & `mc`
* Install Docker Engine according to https://docs.docker.com/engine/install/debian/#install-using-the-repository
* Enable rootless mode of Docker according to https://docs.docker.com/engine/security/rootless/
* Install the `ms-vscode-remote.remote-ssh` extension on the PC for comfortable access
* Install the `ms-azuretools.vscode-docker` extension in the Remote-SSH for easy Docker management
* Install InfluxDB OSS v2 with Docker Compose, https://docs.influxdata.com/influxdb/v2/install/use-docker-compose/
* Run the service with `docker compose up`

# To-dos

* Install grafana with docker
* Research Eclipse Mosquitto, https://hub.docker.com/_/eclipse-mosquitto
* Research Home Assistant

# Influxdb

* https://docs.influxdata.com/influxdb/v2/get-started/setup/
* https://docs.influxdata.com/influxdb/v2/reference/cli/influx/setup/

# Interesting raspi commands

vcgencmd measure_temp
vcgencmd bootloader_version
vcgencmd bootloader_config
vcgencmd otp_dump

cat /proc/cpuinfo
cat /sys/firmware/devicetree/base/model

apt install rpi-eeprom

sudo raspi-config

rpi-eeprom-config
sudo -E rpi-eeprom-config --edit
sudo rpi-eeprom-update
sudo rpi-eeprom-update -a
sudo reboot

sudo systemctl unmask rpi-eeprom-update
nano /etc/default/rpi-eeprom-update
