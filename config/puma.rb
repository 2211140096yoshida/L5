# Puma starts a configurable number of processes (workers) and each process
# serves each request in a thread from an internal thread pool.
workers ENV.fetch("WEB_CONCURRENCY") { 2 }  # 修正部分: デフォルトを2に設定

# Set the number of threads to use per worker
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
port ENV.fetch("PORT") { 3000 }

# Specifies the `environment` that Puma will run in.
environment ENV.fetch("RAILS_ENV") { "development" }

# Specify the PID file
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# Allow puma to be restarted by `bin/rails restart` command.
plugin :tmp_restart
