#!/bin/bash

sudo apt install ca-certificates curl gnupg -y
curl -L https://pkgs.wiretrustee.com/debian/public.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/wiretrustee.gpg
echo 'deb https://pkgs.wiretrustee.com/debian stable main' | sudo tee /etc/apt/sources.list.d/wiretrustee.list
sudo apt-get update
sudo apt-get install netbird
sudo netbird up
