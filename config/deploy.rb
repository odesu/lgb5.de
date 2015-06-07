# config valid only for current version of Capistrano
lock '3.4.0'

set :rvm_type, :system
set :rvm_ruby_version, '2.1.6'
# set :rvm_custom_path, '/usr/local/rvm'

#set :bundle_cmd, '/usr/local/rvm/gems/ruby-2.1.6/bin/bundle'
#set :bundle_flags, ''

set :application, 'dev.lgb5.de'
set :deploy_to, '/home/www/applications/dev.lgb5.de'
set :keep_releases, 5
set :format, :pretty
set :log_level, :debug

set :scm, :svn
set :repo_url, 'https://github.com/odesu/lgb5.de.git'

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
