APP_PATH = "/var/www"
stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stdout.log"
pid APP_PATH + "/tmp/pid/unicorn.pid"
worker_processes 2
working_directory "/var/www" 
