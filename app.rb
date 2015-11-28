require 'sinatra'

get '/' do
  erb :index
end

get '/english' do
  erb :english
end

get '/arabic' do
  erb :arabic
end


get '/:name' do
  # pull the name out of the params hash
  name = params[:name]

  # return the name to the browser
  name
end