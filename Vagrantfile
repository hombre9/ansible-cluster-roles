# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Use the same key for each machine
  config.ssh.insert_key = false

  config.vm.define "vagrant1" do |vagrant1|
    vagrant1.vm.box = "chef/centos-6.6"
    vagrant1.vm.network "forwarded_port", guest: 80, host: 8180
    vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
  end
  # config.vm.define "vagrant2" do |vagrant2|
  #   vagrant2.vm.box = "chef/centos-6.6"
  #   vagrant2.vm.network "forwarded_port", guest: 28080, host: 28080
  #   vagrant2.vm.network "forwarded_port", guest: 8085, host: 8085
  #   vagrant2.vm.network "forwarded_port", guest: 8086, host: 8086
  #   vagrant2.vm.network "forwarded_port", guest: 8089, host: 8089
  # end
  # config.vm.define "vagrant3" do |vagrant3|
  #   vagrant3.vm.box = "chef/centos-6.6"
  #   vagrant3.vm.network "forwarded_port", guest: 28080, host: 28081
  #   vagrant3.vm.network "forwarded_port", guest: 8085, host: 28085
  #   vagrant3.vm.network "forwarded_port", guest: 8086, host: 28086
  #   vagrant3.vm.network "forwarded_port", guest: 18080, host: 18080
  # end
end
