# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'lxc'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "passenger-nginx"
  config.vm.box = "base"
  config.omnibus.chef_version = :latest
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true

  config.vm.provider :lxc do |lxc|
    # Same effect as 'customize ["modifyvm", :id, "--memory", "1024"]' for VirtualBox
    lxc.customize 'cgroup.memory.limit_in_bytes', '512M'
  end


  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = ["roles"]
    chef.add_role "passenger_nginx"
    chef.add_recipe 'apt' # or 'yum', depend on your machine
    chef.add_recipe 'build-essential'
    chef.add_recipe 'ruby_build::default'
    chef.add_recipe 'passenger::install_ruby'
    chef.add_recipe 'nginx::source'
    chef.log_level = :debug

  end
end
