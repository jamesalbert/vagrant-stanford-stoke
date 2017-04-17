# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provider "virtualbox" do |v|
    v.memory = 51200
    v.cpus = 20
  end
  config.vm.provision "shell", path: "sources/bootstrap.sh", privileged: true
  config.vm.synced_folder "./stoke", "/home/vagrant/stoke"
end
