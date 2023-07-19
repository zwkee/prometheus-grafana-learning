# Reference: https://gist.github.com/suyash-more/dc307c39417730d210c75e3d2a07dce7

# The language used to write the file is RUBY 

# All Vagrant configuration is done below. The "2" in Vagrant.configure configures the configuration version
# (we support older styles for backwards compatibility). Please don't change it unless you know what you are
# doing.
# Though newer version are available then too the older(more stable) version of the Vagrant are preferred..!!
Vagrant.configure("2") do |config| 
  # The most common configuration options are documented and commented below.
  # For a complete reference, please refer to the online documentation at
  # https://docs.vagrantup.com

  # Every Vagrant development environment requires a box. You can search for boxes at
  # https://vagrantcloud.com/search.
  # More Examples : "ubuntu/bionic64","ubuntu/xenial64","ubuntu/xenial64","centos/7" ......
  config.vm.box = "bento/ubuntu-22.04"

  # Configure the virtual machine to use proxy if needed. vagrant-proxyconf plugin will need to be installed.
  #   if Vagrant.has_plugin?("vagrant-proxyconf")
  #     config.proxy.http     = "http://192.168.0.2:3128/"
  #     config.proxy.https    = "http://192.168.0.2:3128/"
  #     config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  #   end

  # Enable or Disable the auto-update of the VM whenever used
  # If this is disabled, the boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Host your VM on port 8080 (can be changed) via your localhost(ip=127.0.0.1)
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network to run your VM for any hosting purpose or any else
  # put in your current ipv4 public address here 
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network to run your VM for any hosting purpose or any else
  # put in your current ipv4 public address here 
  # Create a public network, which generally matched to bridged network.
  # Bridged network make the machine appear as another physical device on the network.
  # config.vm.network "public_network" , ip="192.168.0.101"
  
  # you can add Maximum boot time for your VM. By default it is 300 seconds
  # config.vm.boot_timeout= "300"

  config.vm.define "prometheus_server" do |prometheus_server|
    prometheus_server.vm.hostname = "prometheus-server"
    prometheus_server.vm.box = "bento/ubuntu-22.04"
    prometheus_server.vm.network :private_network, ip: "192.168.1.101"
    # prometheus_server.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
    # prometheus_server.vm.provision "shell", path: "<absolute path to provision.sh>"
  end

  # Folder Settings
  # You can change the directory mode and file mode as per need
  # nfs : network file system
  # put in the directory to be mounted on the VM from your host machine
  # Share an additional folder to the guest VM. The first argument is the path on the host to the actual folder.
  # The second argument is the path on the guest to mount the folder. And the optional third argument
  # is a set of non-required options.
  # config.vm.synced_folder ".", "/vagrant_data", :nfs => { :mount_options => ["dmode=777", "fmode=666"] } 

  # Provider-specific configuration so you can fine-tune various backing providers for Vagrant.
  # These expose provider-specific options.
  # Example for VirtualBox:
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # put up the amount of memory you want to provide to your VM
    vb.memory = 4096

    # put up the number of CPU's you want to provide to your VM
    vb.cpus = 2
  end


  # When your Box is starting these code snippets run into the CMD/BASH and the folowing gets installed
  # You can either write the commands here or make a file with anyname.sh and give the filepath

  # Use the below statement if file is to be considered   
  # Put in the filepath below if used or else abandon the line
  
  # config.vm.provision "shell", path: "anyname.sh" 

  # Both the code snippets must not be there in at the same time
  # Comment out as needed

  # In that .sh file you just need to type all the commands which you a re considering here below
  # Which seems to be a good way rather than populating the Vagrant File

  # Use the below statement if file is not to be considered   
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end