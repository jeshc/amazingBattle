class Tablero


  def initialize
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

  def getValue x,y
    @tablero[x][y]
  end

  def defineTamano dimension
    #
    @tamanoTablero = dimension
  end

  def marcarCelda x, y, valor
    @tablero[x][y] = valor
  end
end
