set :branch, ENV.fetch('REVISION', 'master')
set :rails_env, 'staging'

server '107.170.17.163', roles: %w{web app db}

set :ssh_options, {
    user: 'deploy',
    forward_agent: true,
    keepalive: true
}