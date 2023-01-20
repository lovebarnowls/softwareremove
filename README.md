
softwareremove and workstation protection
```
cd ~

if got clone doesn't work, require apt install.
sudo -i
apt-get update
apt install git
git clone https://github.com/lovebarnowls/softwareremove.git
continue with below instructions


cd softwareremove

sudo chmod a+x *.sh

sudo -H ./inject.sh

// check PySEL.conf to make sure line 3 has debian or ubuntu

sudo -H ./install.sh


AWS Customization
#!/bin/bash
chown ubuntu:ubuntu /home/ubuntu/Desktop/*
chmod a+rw /home/ubuntu/Desktop/*
mkdir -p home/ubuntu/Desktop
mkdir -p usr/local/bin/pysel/Event_checks
cd /home/ubuntu
apt-get update -y -qq
apt install git -y -qq
git clone https://github.com/lovebarnowls/softwareremove.git
cd /home/ubuntu/softwareremove
mv /home/ubuntu/softwareremove/score.py /usr/local/bin/pysel/
mv /home/ubuntu/softwareremove/pysel.py /usr/local/bin/pysel/
mv /home/ubuntu/softwareremove/Event_checks/* /usr/local/bin/pysel/Event_checks/
chmod a+x inject.sh
./inject.sh -y -qq
chmod a+x install.sh
./install.sh -y -qq
systemctl enable pysel_scoring.service
systemctl start pysel_scoring.service
