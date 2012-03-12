Given /^I am in a home page$/ do
  visit "/"
end

When /^I search for "([^"]*)"$/ do |term|
  fill_in "q", :with => term
end

When /^I press the "([^"]*)" button$/ do |arg1|
  click_button(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
