hosts = [
  { name: 'chef-server',   box: 'centos/7',	        mem: 2048, 	netint: 1 },
  { name: 'chef-node',   box: 'ubuntu/xenial64',	mem: 2048,	netint: 2 },
]


Vagrant.configure('2') do |config|
  hosts.each do |host|
    config.vm.define host[:name] do |node|
      node.vm.box = host[:box]
      node.vm.hostname = host[:name]
      node.vm.provider :virtualbox do |vm|
        vm.memory = host[:mem]
      end

      if host[:netint] == 1
        node.vm.network :public_network, bridge: 'Intel(R) Ethernet Connection (2) I219-V'
    #    node.vm.provision 'shell', path: ''
      end

      if host[:netint] == 2
        node.vm.network :public_network, bridge: 'Intel(R) Ethernet Connection (2) I219-V'
    #    node.vm.provision 'shell', path: ''
      end
    end
    config.vm.synced_folder '.', '/vagrant', type: 'virtualbox'
    Vagrant::Config.run do |config|
      config.vbguest.auto_update = false
      config.vbguest.no_remote = true
    end
  end
end
