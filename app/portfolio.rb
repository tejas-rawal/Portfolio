require 'sinatra'
require 'haml'
require 'pry'

class Portfolio < Sinatra::Base
  get '/' do
    haml "Hello World! #{Time.now}"
  end
end