Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 80, host: 8000

  config.vm.provider :virtualbox do |v|
    v.gui = true
    v.name = "cs3410-2016sp"
    v.customize [
      "modifyvm", :id,
      "--memory", "2048",
      "--vram", "16",
      "--clipboard", "bidirectional"
    ]
  end

  config.vm.provision :shell, privileged: false, :path => "setup-dev-tools.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-lxde.sh"
  config.vm.provision :shell, privileged: false, :path => "setup-sublime.sh"

  # disable the synced folder feature (Windows bug if commented out)
  config.vm.synced_folder ".", "/vagrant", disabled: true
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
