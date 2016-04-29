Feature:
  como andres
  quiero que cada vez que inicio un juego el barco inicie en diferente posicion
  para que cada juego sea distinto

Scenario: el juego inicia con el barco posicionado en la posicion 1,1
  Given que inicie el juego
  Then veo el barco en la posicion "A1","B1","C1"
