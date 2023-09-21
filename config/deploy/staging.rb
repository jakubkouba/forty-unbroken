set :deploy_to, '/home/git/apps/forty-unbroken/staging'
set :rails_env, 'staging'
set :migration_role, :app
set :conditionally_migrate, true
set :bundle_flags, '' # reset bundler flags for staging to see the progress
set :puma_nginx, :app
set :puma_role, :app
set :puma_phased_restart, true
set :puma_enable_socket_service, true
set :nginx_server_name, 'staging.fortyunbroken.com'