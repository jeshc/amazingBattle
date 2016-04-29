require 'sinatra'

get '/' do
  erb :index
end

post '/tableroFacil' do
  erb :tableroFacil
end
