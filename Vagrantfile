Vagrant.configure("2") do |config|
  config.vm.box =  "ubuntu/trusty64"
  
  config.vm.define "ubuntu-mongodb" do |db|
     db.vm.provision :shell, path: "provision_mongo.sh"
     db.vm.network "private_network", ip: "192.168.33.12"
     db.vm.network "forwarded_port", guest: 27017, host: 27017, auto_correct: true
  end
end
