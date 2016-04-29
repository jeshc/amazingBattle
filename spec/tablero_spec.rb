require './lib/tablero'
describe Tablero do
  it "cuando la celda esta vacia valor de celda debe ser 0" do
    tablero = Tablero.new
    resultado = tablero.getValue 1,1 
    resultado.should == 0
  end
end
