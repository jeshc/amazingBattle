describe barco do
  it "El juego inicia" do
    adivinar = Adivinar.new
    adivinar.getPalabraOculta.should == "------"
    adivinar.getIntentos.should == "Intentos restantes 6"
  end
