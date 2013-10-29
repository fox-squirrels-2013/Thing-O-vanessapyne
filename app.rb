require 'sinatra'
require 'active_record'
require_relative './models/saab.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
  database: 'saab' )


get '/' do
  erb :index
end



get '/allsaabs' do
  erb :allsaabs
end

post '/allsaabs' do
  puts params
  @model = params[:model]
  @color = params[:color]
  @year = params[:year]
  Saab.create(model: @model, color: @color, year: @year)
  @view = Saab.all
  erb :allsaabs
end



# erb is a method 
# self.methods.sort

