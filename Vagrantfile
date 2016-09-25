Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.provision "shell", path: "Vagrant-provision-file.sh"

  config.vm.define "svr1" do |svr1|
    svr1.vm.hostname = "svr1"
    svr1.vm.network :private_network, ip: "10.200.0.10", :netmask => "255.255.255.0"
  end

  config.vm.define "svr2" do |svr2|
    svr2.vm.hostname = "svr2"
    svr2.vm.network :private_network, ip: "10.200.0.11", :netmask => "255.255.255.0"
  end
end
