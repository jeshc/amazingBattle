Given(/^que inicie un juego facil$/) do
  visit '/'
  click_button("Facil");
end

When(/^se carga el juego$/) do
  visit '/tableroFacil'
end

Then(/^debo ver un tablero  "(.*?)"$/) do |tamanoTablero|
  last_response.body.should =~ /#{tamanoTablero}/m
end
