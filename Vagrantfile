# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_API_VERSION = '2'

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.define "ubuntu" do |ubuntu|
    config.vm.box = 'ubuntu/trusty64'
    config.vm.provision :shell, path: 'vagrant-libs/bootstrap.ubuntu.sh'
  end

  config.vm.define "centos" do |centos|
    config.vm.box = 'geerlingguy/centos7'
    config.vm.provision :shell, path: 'vagrant-libs/bootstrap.centos.sh'
  end
end
