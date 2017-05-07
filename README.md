# Banka

## Commands
- restart Puma: `bundle exec pumactl -P tmp/pids/puma.pid restart`

## Servers
- Staging: 107.170.17.163

## Create new server
- run Ansible example: `ansible-playbook -i inventories/staging banka.yml`
- create database.yml on server
- create application.yml on server
- run capistrano, example: `cap staging deploy`

## New server Troubleshooting
- if nginx fails to start run next command on server `sudo systemctl unmask nginx.service`

## First local run
- install Docker and Docker Compose
- create an alias `alias dcg="docker-compose -f docker-compose.yml -f docker-compose.dev.yml"`
- run `dcg up -d`
- run `dcg run web bundle install`
- run `dcg run web rake db:create`
- run `dcg run web rake db:migrate`
- run `dcg stop`

## Everyday
- run `dcg up -d`
- run `dcg stop`

## Tests
- run `dcg run web rails test`
