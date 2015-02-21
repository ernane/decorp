set :stage, :production
set :ssh_options, {:forward_agent => true, keys: ['~/.vagrant.d/insecure_private_key']}

server '192.168.33.13', user: 'vagrant', roles: %w{web app db}

