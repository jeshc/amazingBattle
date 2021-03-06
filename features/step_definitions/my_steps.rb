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
  visit '/'
  click_button('iniciar_juego')
end

Then(/^debo ver un tablero  "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Given(/^que inicie el juego$/) do
  visit '/'
  click_button('iniciar_juego')
end

Then(/^veo el barco en la posicion "(.*?)","(.*?)","(.*?)"$/) do |pos1,pos2,pos3|
  last_response.body.should =~ /#{pos1}/m
  last_response.body.should =~ /#{pos2}/m
  last_response.body.should =~ /#{pos3}/m
end
