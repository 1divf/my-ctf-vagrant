# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"
  config.vm.provision :shell, :path => "vagrant_setup.sh", :privileged => false
  config.ssh.username = 'vagrant'
  config.ssh.forward_agent = true

  config.vm.synced_folder "~/project/ctf", "/home/vagrant/ctf"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
end
