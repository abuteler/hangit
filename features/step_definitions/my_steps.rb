When(/^The user opens the app$/) do
  visit '/'
end

When(/^The user starts the game$/) do
  visit '/play'
end

When(/^The user enters the letter "(.*?)", which is not present in the secret word "(.*?)"$/) do |letter, secret_word|
  fill_in("input", :with => letter)
  click_button("submit")
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

Then(/^The user should see its life counter decreased by one$/) do
  pending
  last_response.body.should =~ /#{text}/m
end

Then(/^The user sees the life counter with "(.*?)"$/) do |life_cnt|
  last_response.body.should =~ /#{life_cnt}/m
end

