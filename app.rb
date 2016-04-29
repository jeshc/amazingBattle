require 'sinatra'

get '/' do
  erb :index
end


post '/juego' do
  erb :juego

post '/tableroFacil' do
  erb :tableroFacil

end
