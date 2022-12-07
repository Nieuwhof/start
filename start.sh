#!/bin/bash

#####################
# Setting up Server #
#####################

apt install -y ansible &&
git clone git@github.com:Nieuwhof/ansible.git && 
git clone git@github.com:Nieuwhof/multipass.git &&
cd ~/ansible && 
ansible-playbook -k -i inventory/hosts setup.yaml &&
su ops &&
cd /home/ops/cloud &&
sudo ./build.sh gromit && 
sudo ./build.sh preston
