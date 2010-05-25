set :application, "Digital Whispers"
set :repository,  "git://github.com/naut/Digital-Whispers.git"

set :scm, :git

role :web, "digital-whispers.net"                          # Your HTTP server, Apache/etc
role :app, "digital-whispers.net"                          # This may be the same as your `Web` server
role :db,  "digital-whispers.net", :primary => true # This is where Rails migrations will run

set :deploy_to, "/var/www/digital-whispers.net"
set :user, "digitalwhispers"
set :use_sudo, false


task :after_update_code do
  run "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end