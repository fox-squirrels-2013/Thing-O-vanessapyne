require 'sinatra'
require 'active_record'
require_relative './models/saab.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
  database: 'saab' )

get '/' do
  erb :index
end

get '/allsaabs' do
  @view = Saab.all
  erb :allsaabs
end

post '/allsaabs' do
  puts params
  if params[:deleted]
    Saab.find(params[:deleted]).destroy
  end
  if params[:model]
    @model = params[:model]
    @color = params[:color]
    @year = params[:year]
    Saab.create(model: @model, color: @color, year: @year)
  end
    redirect '/allsaabs'
end

get '/allsaabs/:id' do
  @one = Saab.find(params[:id])
  p @one.id
  erb :one_car
end



# erb is a method 
# self.methods.sort

