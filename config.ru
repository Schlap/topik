require './server'
require 'data_mapper'

DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_GREEN_URL'] || 'postgres://localhost/topik_development')

run Sinatra::Application
