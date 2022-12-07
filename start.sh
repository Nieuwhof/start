#!/bin/bash

#####################
# Setting up Server #
#####################

apt install -y ansible &&
git clone https://github.com/Nieuwhof/ansible.git && 
git clone https://github.com/Nieuwhof/multipass.git &&
cd ~/ansible && 
ansible-playbook -k -i inventory/hosts setup.yaml &&
echo "Please do a ctrl C to continue"
cd /home/ops/cloud &&
su ops &&
sudo ./build.sh gromit && 
sudo ./build.sh preston
