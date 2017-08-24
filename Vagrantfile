Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"

  config.ssh.forward_x11 = false

  config.vm.provider "virtualbox" do |vb|
    vb.name = "cs3410-2016fa"
    #vb.gui = true
    vb.memory = "2048"
    vb.customize [
      "modifyvm", :id,
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
