# required_plugins = ["vagrant-hostsupdater"]
# required_plugins.each do |plugin|
#     exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
# end

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.network "private_network", ip: "192.168.10.150"
    config.hostsupdater.aliases = ["database.local"]
    config.vm.synced_folder ".", "/app"
    config.vm.provision "chef_solo" do |chef|
      chef.add_recipe "python::default"
      chef.add_recipe "nginx"
  end
end
