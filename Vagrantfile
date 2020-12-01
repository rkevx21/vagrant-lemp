# Vagrant configuration version
Vagrant.configure("2") do |config|

  # Hostname of VM
  config.vm.hostname = "reth-vagrant.local"
  # Box to be installed in VM
  config.vm.box = "ubuntu/bionic64"

  # Network configuration
  config.vm.network :private_network, ip: "192.168.40.5"

  # Provider to be used for VM
  config.vm.provider :virtualbox do |vb|
    # VM name
    vb.name = "reth-vagrant"
    # VM memory
    vb.memory = "2048"
    # VM cpu
    vb.cpus = 2
  end

  # Configuration
  config.vm.provision :shell, :path => "bootstrap.sh"
  # Sync folder from host to guest machine
  config.vm.synced_folder ".", "/vagrant"

end


