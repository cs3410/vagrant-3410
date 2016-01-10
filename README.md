# Instructions for getting the VM up and running

1. Download and install both [Vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org).

2. Download or clone this repository and install the VM.

        git clone https://github.com/cs3410/vagrant-3410.git
        cd vagrant-3410
        vagrant up

3. Once the `vagrant up` command has finished, run `vagrant halt`. This will shutdown the virtual machine.

4. Now if you need to work on 3410, simply run `vagrant up`. This should boot into an Ubuntu box that has what you need to completely destroy CS 3410 :).

5. If you prefer the command line, feel free to explore the `vagrant ssh` option.
