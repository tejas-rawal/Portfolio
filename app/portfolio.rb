require 'sinatra/base'
require 'haml'
require 'pry'

class Portfolio < Sinatra::Application

  configure do
    enable :logging
    file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
    file.sync = true
    use Rack::CommonLogger, file
  end

  get '/' do
    haml :landing
  end

  get '/about' do
    haml :about
  end

  get '/portfolio' do
    haml :portfolio
  end

  get '/contact' do
    haml :contact
  end
end
