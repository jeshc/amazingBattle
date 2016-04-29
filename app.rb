require 'sinatra'

get '/' do
  erb :index
end



post '/juego' do
  erb :juego

get '/tableroFacil' do
  erb :tableroFacil

end
