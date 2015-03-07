require 'sinatra'

env = ENV["RACK_ENV"] || "development"

get '/' do
  erb :index
end

post '/sent' do
  "Email has been sent!"
end
