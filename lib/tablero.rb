class Tablero


  def initialize
    @tamanoTablero
    @valoresTablero = [0,1,2,3]
    @tablero = [
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [1,1,1,0,0]
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

  def tirar x,y
    if @tablero[x][y] == 0
        @tablero[x][y]=3
    elsif @tablero[x][y] == 1
        @tablero[x][y]=2
    end
  end

  def getTablero
    @tablero
  end
end
