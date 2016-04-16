# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.gui = true
  end
  config.vm.define :master do |master_config|
    master_config.vm.box   =  'deb/jessie-amd64'
    master_config.vm.host_name = 'master.local'
    master_config.vm.network "private_network", ip: "192.168.3.222"
    master_config.vm.network "public_network", bridge: 'br0', :mac => '000000250122'
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"
    master_config.vm.provision :shell, :path => "scripts/bootstrap_master.sh"
  end
end
