namespace :unicorn do
  def unicorn_pid
    "#{Rails.root}/shared/pids/unicorn.pid"
  end
  
  desc 'start Unicorn production server daemonized (config file: config/unicorn.rb)'
  task :start => :environment do
    exec "cd #{Rails.root} && bundle exec unicorn_rails -c config/unicorn.rb -E production -D"
  end
  
  desc 'stop Unicorn production server'
  task :stop => :environment do
    exec "kill `cat #{unicorn_pid}`"
  end
  
  desc 'executes `rake unicorn:stop; rake unicorn:start`'
  task :restart => [:stop, :start] do
  end
  
  desc 'executes a "graceful_stop" (waits for workers to finish their current request before finishing)'
  task :graceful_stop => :environment do
    exec "kill -s QUIT `cat #{unicorn_pid}`"
  end
  
  desc 'reexecute the running binary'
  task :reload => :environment do
    exec "kill -s USR2 `cat #{unicorn_pid}`"
  end
  
  desc 'reloads config file and gracefully restart all workers, calling a Gem.refresh in order to reload newly installed gems'
  task :graceful_restart => :environment do
    exec "kill -s HUP `cat #{unicorn_pid}`"
  end
  
  desc 'gracefully stops workers but keep the master running'
  task :graceful_restart => :environment do
    exec "kill -s WINCH `cat #{unicorn_pid}`"
  end
end
