#!/usr/bin/env bash

# Update apt packages
apt-get update

# Install packages
#  ibus libdbus-1-dev libgtk2.0-dev
apt-get install -y git python-pip python-dev python-pip python-virtualenv sshpass openjdk-7-jdk

# Install Ansible if not already existing
if [ ! -d /home/vagrant/ansible ]; then
  git clone git://github.com/ansible/ansible.git --recursive /home/vagrant/ansible;
  cd /home/vagrant/ansible && git fetch && git checkout stable-1.9 && git pull && git submodule update --init --recursive && make && make install;
fi

alias test-module=/home/vagrant/ansible/hacking/test-module

