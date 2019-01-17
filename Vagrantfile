# -*- mode: ruby -*-

# All Vagrant configuration is done below
Vagrant.configure("2") do |config|
	config.vm.define "dockervm" do |dockervm|
		#base box will be bento ubuntu
		dockervm.vm.box = "bento/ubuntu-16.04"
		dockervm.vm.hostname = "docker-aws-box"
		dockervm.vm.network "private_network", ip: "10.10.6.1"
		
		dockervm.vm.network :forwarded_port, host: 8080, guest: 8080
	    dockervm.vm.network :forwarded_port, host: 5000, guest: 5000
	    dockervm.vm.network :forwarded_port, host: 5001, guest: 5001
		dockervm.vm.synced_folder '/Users/surbapu/developer', '/mac_dev', disabled: false
	    dockervm.vm.synced_folder '.', '/vagrant', disabled: false
	    #memory is set to 1GB
	    dockervm.vm.provider :virtualbox do |v|
		#  v.gui = true
		  v.name = "docker_aws_box"
	      v.memory = 2048
          v.cpus = 2
	    end
	    dockervm.vm.provision "shell", inline: "/vagrant/scripts/magic_docker.sh"
	end
	config.vm.define "control" do |control|
		#base box will be centos 7 minimal
		control.vm.box = "bento/centos-7"
		control.vm.hostname = "ansible-host-box"
		control.vm.network "private_network", ip: "10.10.6.2"
	    control.vm.synced_folder '.', '/vagrant', disabled: false
	    #memory is set to 1GB
	    control.vm.provider :virtualbox do |v|
		#  v.gui = true
		  v.name = "ansible_host_box"
	      v.memory = 1024
          v.cpus = 2
	    end
	    control.vm.provision "shell", inline: "/vagrant/scripts/magic_ansible.sh"
	end
	config.vm.define "ansible1" do |ansible1|
		#base box will be centos 7 minimal
		ansible1.vm.box = "bento/centos-7"
		ansible1.vm.hostname = "ansible-vm01-box"
		ansible1.vm.network "private_network", ip: "10.10.6.3"
	    ansible1.vm.synced_folder '.', '/vagrant', disabled: false
	    #memory is set to 1GB
	    ansible1.vm.provider :virtualbox do |v|
		#  v.gui = true
		  v.name = "ansible_vm01_box"
	      v.memory = 1024
          v.cpus = 2
	    end
	    ansible1.vm.provision "shell", inline: "/vagrant/scripts/magic_ansible.sh"
	end
	config.vm.define "ansible2" do |ansible2|
		#base box will be centos 7 minimal
		ansible2.vm.box = "bento/centos-7"
		ansible2.vm.hostname = "ansible-vm02-box"
		ansible2.vm.network "private_network", ip: "10.10.6.4"
	    ansible2.vm.synced_folder '.', '/vagrant', disabled: false
	    #memory is set to 1GB
	    ansible2.vm.provider :virtualbox do |v|
		#  v.gui = true
		  v.name = "ansible_vm02_box"
	      v.memory = 1024
          v.cpus = 2
	    end
	    ansible2.vm.provision "shell", inline: "/vagrant/scripts/magic_ansible.sh"
	end
end
