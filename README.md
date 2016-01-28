# Instructions for getting the VM up and running

1. Download and install both [Vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org). Make sure you're running the latest version of both.

2. Download or clone this repository and install the VM. To get started, open up a Terminal/Command Prompt window. If you downloaded the repo into your "Downloads" folder, the path you might `cd` into might be something like `~/Downloads/vagrant-3410` on OS X/Unix or `C:\Desktop\vagrant-3410` on Windows

        git clone https://github.com/cs3410/vagrant-3410.git
        cd vagrant-3410
        vagrant up
**Please note**: VirtualBox will launch into the command line and prompt you to login while the installation scripts are still running. Don't touch VirtualBox during this time. 

3. Once the `vagrant up` command has finished on your host machine, run `vagrant halt`. This will shutdown the virtual machine. 

4. Now if you need to work on 3410, `cd` back into the `vagrant-3410` directory and run `vagrant up`. This should now move you past the login screen without being prompted for authentication and boot into an Ubuntu box GUI that has what you need to completely destroy CS 3410 :).

5. If you prefer the command line, feel free to explore the `vagrant ssh` option.

## Troubleshooting
If you have problems during installation (such as accidently quitting installation early or other issues), you can type `vagrant destroy` to remove the broken VM and then `vagrant up` to install again.
