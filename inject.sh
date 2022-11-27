#!/bin/bash

sudo useradd saul
sudo useradd luke
sudo useradd joy
sudo useradd judas
sudo useradd pilate
sudo useradd james
sudo useradd grace
sudo useradd jordan
sudo useradd theresa
sudo useradd phoebe
sudo useradd peter
sudo useradd john
sudo passwd -d james
sudo passwd -d judas
sudo usermod -aG sudo judas
sudo chown joy /etc/passwd

