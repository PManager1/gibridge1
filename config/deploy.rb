require 'bundler/capistrano'
#using  RVM!
$:.unshift("#{ENV["HOME"]}/.rvm/lib")
require "rvm/capistrano"
set :rvm_type, :user


set :application, "capi_app"
set :deploy_to, "/var/www/#{application}"

role :web, "184.169.135.60"                          # Your HTTP server, Apache/etc
role :app, "184.169.135.60"                         # This may be the same as your `Web` server
role :db,  "184.169.135.60", :primary => true # This is where Rails migrations will run


default_run_options[:pty] =  true
set :repository,  "git@github.com:jaipratik/gibridge1.git"
set :scm, :git
set :branch, "master"


set :user, "ubuntu"            
set :use_sudo, false
set :admin_runner, "ubuntu"

set :rails_env, 'production'     
#set :use_sudo, false   #if error delete this


# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end


