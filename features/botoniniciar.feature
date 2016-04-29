Feature:
  como andres
  quiero poder iniciar el juego con un solo click
  para no perder tiempo y divertirme mas rapido

Scenario: quiero entrar a la pagina
  Given que abro la aplicacion
  When hago clic en el boton "iniciar_juego"
  Then debo ver "Tablero"
