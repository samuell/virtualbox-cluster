# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.define "master" do |master|
		master.vm.box = "ubuntu/trusty64"
		master.vm.network "forwarded_port", guest: 80, host: 8881
		master.vm.provision :ansible do |ansible|
			ansible.playbook = "playbook_genkeys.yml"
		end
		master.vm.provision :ansible do |ansible|
			ansible.playbook = "playbook.yml"
		end
		master.vm.network "private_network", ip: "10.2.2.2"
	end

	config.vm.define "slave1" do |slave1|
		slave1.vm.box = "ubuntu/trusty64"
		slave1.vm.network "forwarded_port", guest: 80, host: 8882
		slave1.vm.provision :ansible do |ansible|
			ansible.playbook = "playbook.yml"
		end
		slave1.vm.network "private_network", ip: "10.2.2.4"
	end

	config.vm.define "slave2" do |slave2|
		slave2.vm.box = "ubuntu/trusty64"
		slave2.vm.network "forwarded_port", guest: 80, host: 8883
		slave2.vm.provision :ansible do |ansible|
			ansible.playbook = "playbook.yml"
		end
		slave2.vm.network "private_network", ip: "10.2.2.6"
	end
end
