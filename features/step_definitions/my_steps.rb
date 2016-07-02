When(/^The user enters to the game$/) do
  visit '/play'
end

Then(/^The user should see the secret word "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

