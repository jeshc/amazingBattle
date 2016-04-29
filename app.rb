require 'sinatra'

get '/' do
  erb :index
end


post '/juego' do
  @eje_y = ['a','b','c','d','e', 'f', 'g', 'h', 'i', 'j', 'k', 'l']
  @eje_x = [1,2,3,4,5]
  @matriz = [
    [0,0,0,0,0],
    [0,3,0,0,0],
    [0,0,0,0,0],
    [0,2,1,1,0],
    [0,0,0,0,3],
    [0,0,0,0,3],
    [0,0,0,0,3]
  ]

  erb :juego
end

post '/tableroFacil' do
  erb :tableroFacil
end
