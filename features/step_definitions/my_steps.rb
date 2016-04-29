<<<<<<< HEAD
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
=======
Given(/^que inicie un juego facil$/) do
  visit '/'
  click_button("Facil");
end

When(/^se carga el juego$/) do
  visit '/tableroFacil'
end

Then(/^debo ver un tablero  "(.*?)"$/) do |tamanoTablero|
  last_response.body.should =~ /#{tamanoTablero}/m
>>>>>>> e8d2c9aa53c8e66c9a6a65aa3f240dc1ec07787e
end
