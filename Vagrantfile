# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	HO_NETWORK = "192.168.56"
	BASE_INT_NETWORK = "10.10.20"
	VRAM = "1024"
	CUPS = 2
	config.ssh.insert_key = false
	config.vm.box_check_update = false
  
	config.vm.define "web" do |configweb|
		configweb.vm.box = "ubuntu/jammy64"
		configweb.vm.hostname = "web.m340"
		configweb.vm.network "private_network", ip: "#{HO_NETWORK}.10", name: "VirtualBox Host-Only Ethernet Adapter"
		configweb.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.10", virtualbox__intnet: "intnet"
		configweb.vm.provision "shell", path: "provision-web.sh"
		configweb.vm.synced_folder "./adminer", "/var/www/html"
		configweb.vm.provider "virtualbox" do |vb|
			vb.name = "web.m340"
			vb.memory = "#{VRAM}"
			vb.cpus = "#{CUPS}"
		end
	end

	config.vm.define "db" do |config_db|
		config_db.vm.box = "ubuntu/jammy64"
		config_db.vm.hostname = "db.m340"
		config_db.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.11", virtualbox__intnet: "intnet"
		config_db.vm.provision "shell", path: "provision-db.sh"
		config_db.vm.provider "virtualbox" do |vb|
			vb.name = "db.m340"
			vb.memory = "#{VRAM}"
			vb.cpus = "#{CUPS}"
		end
	end	
end