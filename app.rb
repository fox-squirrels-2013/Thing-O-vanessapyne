require 'sinatra'
require 'active_record'
require_relative './models/saab.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
  database: 'saab' )


get '/' do
  erb :index
end

get '/allsaabs' do
  @saab1 = Saab.first
  erb :allsaabs
end

# erb is a method 
# self.methods.sort