require './lib/tablero'
describe Tablero do
  it "cuando la celda esta vacia valor de celda debe ser 0" do
    tablero = Tablero.new
    tablero.marcarCelda 0,0,0
    resultado = tablero.getValue 1,1
    resultado.should == 0
  end

  it "cuando en la celda esta el barco el valor de celda debe ser 1" do
    tablero = Tablero.new
    tablero.marcarCelda 0,0,1
    resultado = tablero.getValue 0,0
    resultado.should == 1
  end

  it "cuando en la celda hay un hit el valor de celda debe ser 2" do
    tablero = Tablero.new
    tablero.marcarCelda 0,0,2
    resultado = tablero.getValue 0,0
    resultado.should == 2
  end

  it "cuando en la celda hay un miss el valor de celda debe ser 3" do
    tablero = Tablero.new
    tablero.marcarCelda 0,0,3
    resultado = tablero.getValue 0,0
    resultado.should == 3
  end

  it "cuando el usuario tira en una posicion que no hay nada la celda debe ser 3" do
      tablero = Tablero.new
      tablero.tirar 3,3
      resultado=tablero.getValue 3,3
      resultado.should == 3
  end
  it "cuando el usuario tira en una posicion que SI hay nada la celda debe ser 2" do
      tablero = Tablero.new
      tablero.tirar 4,0
      resultado=tablero.getValue 4,0
      resultado.should == 2
  end

  it "Cuando el usuario inicia el juego puede ver el tablero 0's " do
    tablero = Tablero.new
    tmpTablero = [
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [0,0,0,0,0],
                [1,1,1,0,0]
              ]

    resultado=tablero.getTablero
    resultado.should==tmpTablero
  end

end
