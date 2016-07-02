When(/^The user opens the app$/) do
  visit '/'
end

When(/^The user starts the game$/) do
  visit '/play'
end

When(/^The user enters to the game$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The user should see a welcome message: "(.*?)"$/) do |welcome_msg|
  last_response.body.should =~ /#{welcome_msg}/m
end

Then(/^The user should see a button "(.*?)"$/) do |btn_name|
  last_response.body.should =~ /#{btn_name}/m
end

Then(/^The user should see the secret word "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end



