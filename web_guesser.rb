require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "THE SECRET NUMBER IS #{rand(100)}"
end
