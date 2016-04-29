Feature:
  como andres
  quiero acceder al sitio web del juego
  para poder jugar

Scenario: quiero entrar a la pagina
  Given que abro la aplicacion
  When veo el mensaje "Bienvenido"
  Then debo ver el boton "Iniciar juego"
