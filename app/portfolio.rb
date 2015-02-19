require 'sinatra'
require 'haml'
require 'pry'

class Portfolio < Sinatra::Base
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