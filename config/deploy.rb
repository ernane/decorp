lock '3.3.5'

set :application, 'devcorp'
set :repo_url, 'git@github.com:ernane/devcorp.git'

set :deploy_to, '/home/vagrant/devcorp'

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
