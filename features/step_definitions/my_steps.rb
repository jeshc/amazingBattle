Given(/^que abro la aplicacion$/) do
  visit '/'
end

When(/^veo el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^debo ver el boton "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When(/^hago clic en el boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^debo ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Given(/^que inicie un juego facil$/) do
  visit '/'
end

When(/^se carga el juego$/) do
  visit '/tableroFacil'
end

Then(/^debo ver un tablero  "(.*?)"$/) do |tamanoTablero|
  last_response.body.should =~ /#{tamanoTablero}/m
end

Given(/^que inicie el juego$/) do
  visit '/'
  click_button('iniciar_juego')
end

Then(/^veo el barco en la posicion x "(.*?)"$/) do |x|
  last_response.body.should =~ /#{x}/m

end

Then(/^ver y "(.*?)"$/) do |y|
  last_response.body.should =~ /#{y}/m
end
