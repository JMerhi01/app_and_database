# configure 2 so that 2 vms created, using a new "do" block
Vagrant.configure("2") do |config|
  #
  config.vm.define "app" do |app| 
  # configures the VM settings
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip:"192.168.10.100"

  # put the app folder from our local machine to the VM
    app.vm.synced_folder "app", "/home/vagrant/app"

  # provision the VM to have Nginx
    app.vm.provision "shell", path: "provision.sh", privileged: false
  end  
  config.vm.define "db" do |db| 
    db.vm.box = "ubuntu/bionic64"
    db.vm.network "private_network", ip:"192.168.10.150"
    db.vm.synced_folder "environment", "/home/vagrant/environment"
    db.vm.provision "shell", path: "db_provision.sh", privileged: false


    
  end    
end