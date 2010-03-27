set :application, "rails2.rainerblessing.com"
#set :repository,  "git+ssh://rainerbl@theblessing.net/home/rainerbl/git.rainerblessing.com/fb.git"
set :repository,  "/home/rainer/src/rails/fb"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
default_run_options[:pty] = true
set :scm_command, "git"
set :use_sudo, false
set :deploy_to, "/home/rainerbl/rails2.rainerblessing.com"
set :deploy_via, :copy
set :via, :scp

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
set :ssh_options, { :forward_agent => true }
set :domain, "rainerbl@rainerblessing.com"
role :app, domain
role :web, domain
role :db,  domain, :primary => true
#############################################################
##  Passenger
##############################################################

namespace :deploy do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end

after "deploy:update_code", "gems:install"
 
namespace :gems do
  desc "Install gems"
  task :install, :roles => :app do
    run "cd #{current_release} && rake gems:install"
  end
end
