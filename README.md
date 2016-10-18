# Instructions for getting the VM up and running

1. Download and install both [Vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org). Make sure you're running the latest version of both. If you're on Windows, make sure you have an SSH client installed. Installing [Git](https://git-scm.com/) is the easiest way to get an SSH client, and will be useful for this, and other courses! This website is very helpful for setting up vagrant on Windows: http://tech.osteel.me/posts/2015/01/25/how-to-use-vagrant-on-windows.html. (If you do not already have Git, when going through the setup, check the box "Use Git and optional Unix tools from the Windows Command Prompt" on the "Adjusting your PATH environment" screen. If you already have Git, you need to add the following to your PATH: C:\Program Files\Git\bin. You can do so by navigating to your system environment variables, and clicking edit "PATH".)

2. Download the course VM and install it. To get started, unzip the folder. Open up a Terminal/Command Prompt window. If you downloaded the VM into your "Downloads" folder, the path you might `cd` into might be something like `~/Downloads/vagrant-3410` on OS X/Unix or `C:\Desktop\vagrant-3410` on Windows. Navigate into the VM folder, then call 'vagrant up'. That might look something like the following:

        cd vagrant-3410
        vagrant up

3. Once the `vagrant up` command has finished on your host machine, run `vagrant halt`. This will shutdown the virtual machine. 

4. Now if you need to work on 3410, `cd` back into the `vagrant-3410` directory and run `vagrant up`. You now have to 'vagrant ssh', which will log you into the command line for an Ubuntu box that has what you need to completely destroy CS 3410 :).

5. if you 'ls', you'll notice you have a folder '3410' within the VM. This folder will be mirrored on your VM and Host Machine! This allows you to work on files on your host, and compile and run them on the VM! Note: Always make sure to compile and run your code on the VM! 

## Troubleshooting
If you have problems during installation (such as accidently quitting installation early or other issues), you can type `vagrant destroy` to remove the broken VM and then `vagrant up` to install again.
