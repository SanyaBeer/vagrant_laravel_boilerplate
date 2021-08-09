Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.ssh.insert_key = true
  config.ssh.password = "vagrant"
  config.ssh.private_key_path = "~/.ssh/id_rsa"

  config.vm.provision :shell, path: "vagrant/bootstrap.sh"

  config.vm.synced_folder ".", "/home/vagrant"

  config.vm.network :forwarded_port, guest: 8000, host: 8001, auto_correct: true
end
