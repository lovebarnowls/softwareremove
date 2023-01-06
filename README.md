
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


