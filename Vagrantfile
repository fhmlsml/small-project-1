# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-20.04"

  # config.vm.box_check_update = false

  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  config.vm.network "private_network", ip: "192.168.15.10" 

  # config.vm.network "public_network"

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provider "virtualbox" do |vb|
  
    vb.memory = "4096"
    vb.cpus = 2

  end

  # config.ssh.insert_key = false
  
  # config.trigger.after :up do |trigger|
  #   trigger.name = "Hello world"
  #   trigger.info = "I am running after vagrant up!!"
  # end

  config.vm.provision "shell", path: "script-provision.sh"
  # config.vm.provision "shell", path: "launch.sh"
  # config.vm.provision "shell", path: "bridge.sh"
end
