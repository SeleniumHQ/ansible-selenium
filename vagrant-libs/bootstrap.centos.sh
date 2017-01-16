#!/usr/bin/env bash

# Update apt packages
yum update -y

# Install packages
#  ibus libdbus-1-devel libgtk2.0-dev
yum install -y \
  gcc \
  git \
  python-pip \
  python-devel \
  python-pip \
  python-virtualenv \
  sshpass \
  openssl \
  openssl-devel \
  libssl-devel \
  java-1.7.0-openjdk \
  libffi \
  libffi-devel

pip install --upgrade setuptools
pip install idna
pip install pycparser
pip install cryptography

# Install Ansible if not already existing
if [ ! -d /home/vagrant/ansible ]; then
  git clone git://github.com/ansible/ansible.git --recursive /home/vagrant/ansible;
  cd /home/vagrant/ansible && git fetch && git checkout stable-2.0 && git pull && git submodule update --init --recursive && make && make install;
fi

alias test-module=/home/vagrant/ansible/hacking/test-module
