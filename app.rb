require 'sinatra'
require 'active_record'
require_relative './models/saab.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
  database: 'saab' )


get '/' do
  erb :index
end

get '/allsaabs' do
  @model = params[:model]
  @color = params[:color]
  @year = params[:year]
  Saab.create(model: @model, color: @color, make_year: @year)
  # @view = Saab.all
  erb :allsaabs
end

post '/allsaabs' do
  puts params
  @view = Saab.all
  erb :allsaabs
end

# erb is a method 
# self.methods.sort

