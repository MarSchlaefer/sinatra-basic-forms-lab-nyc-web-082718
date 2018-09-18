require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/new' do
    erb :create_puppy
  end

  post'/display_puppy' do
    @puppy_name = params[:name]
    @puppy_breed = params[:breed]
    @puppy_age = params[:age]
    erb :display_puppy
  end
end
