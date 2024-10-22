# Set the number of workers based on the WEB_CONCURRENCY environment variable
# Default to 2 workers if the environment variable is not set
workers ENV.fetch("WEB_CONCURRENCY") { 2 }.to_i

# Set the number of threads based on the RAILS_MAX_THREADS environment variable
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

# Specify the port Puma will listen on
port ENV.fetch("PORT") { 3000 }

# Specify the environment Puma will run in
environment ENV.fetch("RAILS_ENV") { "development" }

# Allow puma to be restarted by `bin/rails restart`
plugin :tmp_restart
