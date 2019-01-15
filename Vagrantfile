# -*- mode: ruby -*-

# All Vagrant configuration is done below
Vagrant.configure("2") do |config|
	config.vm.define "dockervm" do |dockervm|
		#base box will be bento ubuntu
		dockervm.vm.box = "bento/ubuntu-16.04"
		dockervm.vm.hostname = "docker-aws-box"
		dockervm.vm.network "private_network", ip: "10.10.6.2"
		
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
end
