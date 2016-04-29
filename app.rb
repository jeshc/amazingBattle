require 'sinatra'

get '/' do
  erb :index
end


post '/juego' do
  @eje_y = ['A','B','C','D','E', 'F', 'G', 'H', 'I', 'J', 'K', 'L']
  @eje_x = [1,2,3,4,5]
  @matriz = [
    [0,0,0,0,0],
    [0,3,0,0,0],
    [0,0,0,0,0],
    [0,2,1,1,0],
    [0,0,0,0,3]
  ]

  erb :juego
end

post '/tableroFacil' do
  erb :tableroFacil
end
