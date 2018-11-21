default_run_options[:pty] = true

set :application, "museu-medieval"
set :domain, 'guzenski.com.br'
set :user, "guzenski"

set :repository,  "ssh://#{user}@#{domain}/~/git/museu-medieval.git"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :branch, 'master'
set :git_shallow_clone, 1
set :git_enable_submodules, 1
set :scm_verbose, true
set :use_sudo, false

set :deploy_to, "/home/#{user}/museumedieval.com.br"
set :deploy_via, :remote_cache

server domain, :app, :web
role :db, domain, :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

#restarta o servidor
namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end