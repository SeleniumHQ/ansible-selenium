# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_API_VERSION = '2'

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.provision :shell, path: 'vagrant-libs/bootstrap.sh'
end
