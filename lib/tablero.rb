class Tablero


  def initialize(argument)
    @tamanoTablero
    @valoresTablero = [0,1,2,3]
    @tablero = [
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0]
              ]
  end

  def defineTamano dimension
    #
    @tamanoTablero = dimension
  end

  def marcarCelda x, y, valor
    @tablero[x,y] = valor

  end
end
