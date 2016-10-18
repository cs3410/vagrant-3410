Vagrant.configure(2) do |config|

  config.vm.box = "trusty64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  #config.vm.network :forwarded_port, guest: 80, host: 8000

  config.ssh.forward_x11 = false

  config.vm.provider :virtualbox do |v|
    v.name = "cs3410-2016fa"
    v.customize [
      "modifyvm", :id,
      "--memory", "2048",
      "--clipboard", "bidirectional"
    ]
  end

  config.vm.provision :shell, :path => "setup-dev-tools.sh"
  config.vm.provision :shell, :path => "setup-env.sh"

  config.vm.synced_folder "3410", "/home/vagrant/3410", disabled: false, create: true
  config.vm.synced_folder "3410", "/vagrant/3410", disabled: false, create: true

  # disable the synced folder feature in the default directory (Windows bug if commented out)
  config.vm.synced_folder ".", "/vagrant", disabled: true

end

# -*- mode: ruby -*-
# vi: set ft=ruby :
