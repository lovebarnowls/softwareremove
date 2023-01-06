#!/bin/bash

sudo useradd maldini
sudo useradd terry
sudo passwd -d terry
sudo usermod -aG sudo terry
sudo chown terry /etc/passwd

sudo echo 'auth sufficient pam_succeed_if.so user ingroup nopasswdlogin' > /etc/pam.d/gdm-password
sudo groupadd nopasswdlogin
sudo gpasswd --add maldini nopasswdlogin
sudo touch /opt/listen.sh
sudo sed -i "/Banner/d" /etc/ssh/sshd_config
sudo apt update 
sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq postfix < /dev/null > /dev/null
sudo apt install gedit john rkhunter sqlite3 terminator unhtml apache2 netcat mysql-server -y -qq
sudo service apache2 stop

sudo sed -i '/Port/d' /etc/ssh/sshd_config
sudo sed -i '/PermitRoot/d' /etc/ssh/sshd_config
sudo sed -i '/PermitUserEnvironment/d' /etc/ssh/sshd_config
sudo sed -i '/PermitEmptyPasswords/d' /etc/ssh/sshd_config
sudo sed -i '/Protocol/d' /etc/ssh/sshd_config
sudo sed -i '/UsePAM/d' /etc/ssh/sshd_config

sudo sed -i '$ a Port 22' /etc/ssh/sshd_config
sudo sed -i '$ a PermitRootLogin yes' /etc/ssh/sshd_config
sudo sed -i '$ a PermitUserEnvironment no' /etc/ssh/sshd_config
sudo sed -i '$ a PermitEmptyPasswords yes' /etc/ssh/sshd_config
sudo sed -i '$ a Protocol 1,2' /etc/ssh/sshd_config
sudo sed -i '$ a UsePAM no' /etc/ssh/sshd_config

sudo sed -i '/security/d' /etc/apt/sources.list
sudo sed -i '/Update-Package-Lists/d' /etc/apt/apt.conf.d/10periodic
sudo sed -i '$ a APT::Periodic::Update-Package-Lists "0";' /etc/apt/apt.conf.d/10periodic
