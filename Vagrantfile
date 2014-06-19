# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  VM_BOX = "precise64" # precise32
  URL_BOX = "http://files.vagrantup.com/precise64.box" # "http://files.vagrantup.com/precise32.box"


  config.vm.define :ruby do |ruby_config|
    
    ruby_config.vm.hostname = "vmruby"
    ruby_config.vm.box = VM_BOX
    ruby_config.vm.box_url = URL_BOX
    ruby_config.vm.network :forwarded_port, guest: 80, host: 8080
    ruby_config.vm.network :forwarded_port, guest: 5678, host: 9090 #resque-web 
    ruby_config.vm.network :private_network, ip: "192.168.33.10"
    #ruby_config.vm.network :hostonly, "192.168.33.10"
    #ruby_config.vm.network "public_network"

    # Share the api folder to the guest VM, backed by NFS. 
    ruby_config.vm.synced_folder "app_ruby/", "/var/www/app", :nfs => true

    ruby_config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "1048"]
    end

    #ruby_config.vm.provision :shell, :path => "files/scripts/init.sh"
    #ruby_config.vm.provision :shell, :path => "files/scripts/ruby/ruby.sh"
    #ruby_config.vm.provision :shell, :path => "files/scripts/ruby/nginx.sh"
    #ruby_config.vm.provision :shell, :path => "files/scripts/mongodb.sh"
    #ruby_config.vm.provision :shell, :path => "files/scripts/ruby/memcached.sh"
    #ruby_config.vm.provision :shell, :path => "files/scripts/ruby/bootstrap_app.sh"

  end


  config.vm.define :php do |php_config|
    
    php_config.vm.hostname = "vmphp"
    php_config.vm.box = VM_BOX
    php_config.vm.box_url = URL_BOX
    php_config.vm.network :forwarded_port, guest: 80, host: 8181
    php_config.vm.network :private_network, ip: "192.168.33.11"
    #php_config.vm.network :hostonly, "192.168.33.10"
    #php_config.vm.network "public_network"

    # Share the api folder to the guest VM, backed by NFS. 
    php_config.vm.synced_folder "app_php/", "/var/www/app", :nfs => true

    php_config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "1048"]
    end

    #php_config.vm.provision :shell, :path => "files/scripts/init.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/php.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/php_libs.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/mongodb.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/memcached.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/lib-mongo.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/blitz.sh"
    #php_config.vm.provision :shell, :path => "files/scripts/php/nginx.sh"

  end  

  config.vm.define "ruby"
  config.vm.define "php" 

end
