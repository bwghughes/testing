set :application, "Testing Script Capture"
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/webapps/testing-app"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :repository, "file://." 
set :deploy_via, :copy 
set :scm, :git 

# Machines
set :user, "ben"
role :app, "10.11.10.162"
role :web, "10.11.10.162"
role :db,  "10.11.10.162", :primary => true