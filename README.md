# Instructions for getting the VM up and running

1. Download and install both [Vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org). Make sure you're running the latest version of both.

2. Download or clone this repository and install the VM.

        git clone https://github.com/cs3410/vagrant-3410.git
        cd vagrant-3410
        vagrant up
**Please note**: VirtualBox will launch into the command line while the installation scripts are still running. Don't touch VirtualBox during this time.

3. Once the `vagrant up` command has finished on your host machine, run `vagrant halt`. This will shutdown the virtual machine.

4. Now if you need to work on 3410, `cd` back into the `vagrant-3410` directory and run `vagrant up`. This should boot into an Ubuntu box GUI that has what you need to completely destroy CS 3410 :).

5. If you prefer the command line, feel free to explore the `vagrant ssh` option.
