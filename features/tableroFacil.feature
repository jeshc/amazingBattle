Feature:
  Como jugador
  quiero un modo de juego facil
  para poder ganar rapido

Scenario: Quiero ver un tablero de 5 x 5 con un solo barco
  Given que inicie un juego facil
  When se carga el juego
  Then debo ver un tablero  "Tablero"
