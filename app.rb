require 'sinatra'
require './lib/tablero.rb'
require './lib/barco.rb'

enable :sessions

get '/' do
  erb :index
end


post '/juego' do
  session['juego'] = (session['juego']) ? session['juego'] : Tablero.new
  @barco = Barco.new
  @matriz = session['juego'].getTablero

  @mensaje = ''

  if params['posicion']
    #juego.tirar params['posicion'].upcase
    pos = params['posicion'].to_s.split("")

    @mensaje = @barco.definirMensaje session['juego'].tirar pos[0].to_i, (pos[1].to_i)
    @matriz = session['juego'].getTablero
  end



  @boton = (params['boton']) ? params['boton'].upcase : ''



  @eje_y = ['A','B','C','D','E', 'F', 'G', 'H', 'I', 'J', 'K', 'L']
  @eje_x = [1,2,3,4,5]
  @matriz3 = [
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
