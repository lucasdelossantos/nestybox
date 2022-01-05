Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-18.04"
    config.vm.provider "virtualbox" do |v|
        v.gui = true
    end
    config.vm.provision "docker", type: "shell", path: "docker.sh"
    config.vm.provision "kernel", type: "shell", path: "kernel-upgrade.sh"
    config.vm.provision :shell do |shell|
        shell.privileged = true
        shell.inline = 'echo rebooting'
        shell.reboot = true
    end
    config.vm.provision "sysbox", type: "shell", path: "sysbox.sh"
end