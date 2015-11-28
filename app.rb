require 'sinatra'

get '/' do
    "hello world"
end


get '/:name' do
  # pull the name out of the params hash
  name = params[:name]

  # return the name to the browser
  name
end