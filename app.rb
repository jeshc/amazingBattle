require 'sinatra'

get '/' do
  erb :index
end

post '/juego' do
  erb :juego
end

get '/tableroFacil' do
  erb :tableroFacil
end
