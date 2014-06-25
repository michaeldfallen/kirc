Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.forward_port 80, 3000
  config.vm.forward_port 6667, 6667
  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.options = "--verbose --debug"
  end
end
