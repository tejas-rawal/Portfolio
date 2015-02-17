require './config/environment'

# run Sinatra::Application
run Rack::URLMap.new('/' => Portfolio)