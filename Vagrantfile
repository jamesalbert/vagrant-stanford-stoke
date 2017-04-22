# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial32"
  config.vm.provider "virtualbox" do |v|
    v.memory = 100000
    v.cpus = 32
  end
  config.vm.provision "file", source: "private/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "shell", path: "sources/install_deps.sh"
  config.vm.provision "shell", path: "sources/bootstrap.sh", privileged: false
  config.vm.synced_folder "./scripts", "/home/vagrant/scripts"
end
