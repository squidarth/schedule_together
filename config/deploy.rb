set :application, "friendreminder"
set :repository,  "git@github.com:sshanker220/schedule_together.git"

set :scm, :git
set :branch, "master"
set :user, "ubuntu"
set :use_sudo, true
ssh_options[:keys] = ["~/.ssh/id_rsa", "~/.ssh/.ec2/sidhost.pem"]
set :deploy_to, "/var/www"
 
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server 'ec2-23-22-250-175.compute-1.amazonaws.com', :web, :app, :db
# if you're still using the script/reaper helper you will need
#
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
