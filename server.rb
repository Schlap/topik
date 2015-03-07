require "sinatra"
require "data_mapper"

env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/topik_#{env}")

require './lib/contact.rb'

DataMapper.finalize

DataMapper.auto_upgrade!

get '/' do
  erb :index
end

post '/sent' do
  email = params[:email]
  Contact.create(:email => email)
  redirect to ('/')
end
