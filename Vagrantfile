# -*- mode: ruby -*-
# vi: set ft=ruby :

# We'll mount the Chef::Config[:file_cache_path] so it persists between
# Vagrant VMs
host_cache_path = File.expand_path("../.cache", __FILE__)
guest_cache_path = "/tmp/vagrant-cache"

require "vagrant"

if Vagrant::VERSION < "1.2.1"
  raise "This is only compatible with Vagrant 1.2.1+"
end

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    # Give enough horsepower to build without taking all day.
    vb.customize [
      "modifyvm", :id,
      "--memory", "1536",
      "--cpus", "2"
    ]
  end

  # Enable the berkshelf-vagrant plugin
  config.berkshelf.enabled = true
  # The path to the Berksfile to use with Vagrant Berkshelf
  config.berkshelf.berksfile_path = "./Berksfile-Vagrant"
  # Ensure Chef is installed for provisioning
  config.omnibus.chef_version = :latest

  config.vm.define 'chef' do |c|
    c.vm.box = "canonical-ubuntu-12.04"
    c.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    c.vm.network :private_network, ip: "33.33.33.50"
    c.vm.provision :chef_solo do |chef|
      chef.provisioning_path = guest_cache_path
      chef.json = {
          "chef-server" => {
              "version" => :latest
          },
          "languages" => {
            "ruby" => {
              "default_version" => "1.9.1"
            }
          }
      }
      chef.run_list = [
        "recipe[apt::default]",
        "recipe[chef-server::default]",
        "recipe[ruby::default]",
        "recipe[build-essential::default]",
        "recipe[git::default]"
      ]
    end
    c.vm.provision :shell, :inline => <<-INLINE
      apt-get update
      apt-get -y install libxslt-dev libxml2-dev # stupid Nokogiri!
      apt-get -y remove ruby rubygems # stupid ruby < 1.9
      echo CHEF_SERVER_URL="https://127.0.0.1" >> /etc/environment
      echo ORGNAME=vagrant >> /etc/environment
      gem install spiceweasel --no-ri --no-rdoc
      cp /etc/chef-server/admin.pem /vagrant/.chef/
      cp /etc/chef-server/chef-validator.pem /vagrant/.chef/vagrant-validator.pem
      chown -R vagrant. /vagrant/.chef/*
    INLINE

  end




end

