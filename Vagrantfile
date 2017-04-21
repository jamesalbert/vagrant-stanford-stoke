# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provider "virtualbox" do |v|
    v.memory = 100000
    v.cpus = 60
  end
  config.vm.provision "shell", path: "sources/install_deps.sh"
  config.vm.provision "shell", path: "sources/bootstrap.sh", privileged: false
end
