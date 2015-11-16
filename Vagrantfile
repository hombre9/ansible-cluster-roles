# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Use the same key for each machine
  config.ssh.insert_key = false
  config.vm.box = "chef/centos-6.6"
  config.vm.box = "centos-6.7-x86_64"

  memory_mb = 256

  cluster = {
    'node-1' => "192.168.5.100",
    'node-2' => "192.168.5.101",
    'node-3' => "192.168.5.102",
  }

  cluster.each_with_index do |(short_name, ip), idx|

    config.vm.define short_name do |host|

      host.vm.network :private_network, ip: ip
      host.vm.hostname = short_name
      if short_name=="node-1"
        host.vm.network "forwarded_port", guest: 8080, host: 8080
      end
      host.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", memory_mb]
      end

      # host.vm.provision :ansible do |ansible|
      #   ansible.playbook = "provision.yml"
      #   ansible.extra_vars = {
      #     cluster_node_seq: idx + 1,
      #     cluster_ip_addresses: cluster.values
      #   }
      # end
    end
  end

  # config.vm.define "vagrant1" do |vagrant1|
  #   vagrant1.vm.box = "chef/centos-6.6"
  #   vagrant1.vm.network "forwarded_port", guest: 80, host: 8180
  #   vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
  # end
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

  # --- Configuration

  # PROJECT_NAME  = ENV['PROJECT_NAME']  || "ANSIBLES"
  #
  # BOX_IMAGE     = ENV['BOX_IMAGE']     || "chef/centos-6.6"
  # BOX_NAME      = ENV['BOX_NAME']      || "testbox"
  # BOX_ADMIN     = ENV['BOX_ADMIN']     || "vagrant"
  # BOX_IP_ZONE   = ENV['BOX_IP_ZONE']   || "192.168.111"
  # BOX_IP_END    = ENV['BOX_IP_END']    || "111"
  # BOX_MEMORY    = ENV['BOX_MEMORY']    || "1024"
  # BOX_CPUS      = ENV['BOX_CPUS']      || "1"
  # BOX_DOCKER    = ENV['BOX_DOCKER']    || false


  # --- Vagrant

  # Vagrant.configure("2") do |config|

    # DOCKER SCRIPT

    # $docker_cmd = ""
    # if BOX_DOCKER
    #   # Provision docker and new kernel if deployment was not done
    #   if Dir.glob("#{File.dirname(__FILE__)}/.vagrant/machines/default/*/id").empty?
    #
    #     # Add lxc-docker package
    #     $docker_cmd = "apt-get update -qq; apt-get install -q -y python-software-properties; " \
    #       "add-apt-repository -y ppa:dotcloud/lxc-docker; apt-get update -qq; " \
    #       "apt-get install -q -y lxc-docker; "
    #
    #     # Add X.org Ubuntu backported 3.8 kernel for LXC support
    #     $docker_cmd << "add-apt-repository -y ppa:ubuntu-x-swat/r-lts-backport; " \
    #       "apt-get update -qq; apt-get install -q -y linux-image-3.8.0-19-generic; "
    #
    #     # Add guest additions for local vbox VM
    #     $docker_cmd << "apt-get install -q -y linux-headers-3.8.0-19-generic dkms; " \
    #       "echo 'Downloading VBox Guest Additions...'; " \
    #       "wget -q http://dlc.sun.com.edgesuite.net/virtualbox/4.2.12/VBoxGuestAdditions_4.2.12.iso; "
    #
    #     # Prepare the VM to add guest additions after reboot
    #     $docker_cmd << "echo -e 'mount -o loop,ro /home/vagrant/VBoxGuestAdditions_4.2.12.iso /mnt\n" \
    #       "echo yes | /mnt/VBoxLinuxAdditions.run\numount /mnt\n" \
    #         "rm /root/guest_additions.sh; ' > /root/guest_additions.sh; " \
    #       "chmod 700 /root/guest_additions.sh; " \
    #       "sed -i -E 's#^exit 0#[ -x /root/guest_additions.sh ] \\&\\& /root/guest_additions.sh#' /etc/rc.local; " \
    #       "echo 'Installation of VBox Guest Additions is proceeding in the background.'; " \
    #       "echo '\"vagrant reload\" can be used in about 2 minutes to activate the new guest additions.'; "
    #
    #     # Activate new kernel
    #     $docker_cmd << "shutdown -r +1; "
    #   end
    # end

    # CONFIGURATION



    # config.vm.provision :shell, :inline => $docker_cmd

    # config.vm.provision :ansible do |ansible|
    #   ansible.playbook = "vagrant_auth.yml"
    #   ansible.inventory_path = "vagrant"
    #   ansible.sudo = true
    #   ansible.limit = BOX_NAME
    # end
  # end
end
