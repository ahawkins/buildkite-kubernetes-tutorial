require 'bundler/setup'
require 'sinatra'

class App < Sinatra::Base
  get '/' do
    content_type 'text/plain'
    body 'Hello World'
  end
end
