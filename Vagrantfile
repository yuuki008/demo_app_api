# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/xenial64'

  config.vm.hostname = 'demo-api'

  config.vm.network :private_network, ip: '192.168.50.10'
  config.vm.network :forwarded_port, guest: 8020, host: 8020

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.cpus = 4
    vb.memory = 2048
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'off']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'off']
  end

  config.disksize.size = '15GB'

  config.vm.synced_folder "./", "/home/vagrant/app", type: "virtualbox",
    rsync__exclude: [
      "/node_modules",
      "/log",
      "/tmp",
      "/vendor"
    ]

  config.vm.provision 'shell', inline: <<-SHELL
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    usermod -aG docker vagrant

    curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
  SHELL
end
