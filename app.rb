require 'sinatra'

get '/' do
  erb :index
end

<<<<<<< HEAD
get '/tableroFacil' do
=======

post '/juego' do
  erb :juego

post '/tableroFacil' do
>>>>>>> bbc6247a4c2a0cd5af2eddb4ee35b8d7264d6a65
  erb :tableroFacil

end
