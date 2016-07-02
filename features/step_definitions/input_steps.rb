Given(/^a user that inputs letter "(.*?)"$/) do |arg1|
  visit '/play'
  fill_in("input", :with => arg1)
  click_button("submit")
end

Then(/^hangit should find match letters "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

