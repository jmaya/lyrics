Given /^I am in a home page$/ do
  visit "/"
end

When /^I search for "([^"]*)"$/ do |term|
  Factory(:song, :title => term, :body => 'one dos tres como Las Madrugadas De Mi Pueblo')
  fill_in "q", :with => term
end

When /^I press the "([^"]*)" button$/ do |arg1|
  click_button(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  find(:xpath, "//li[contains(text(),'#{arg1}')]").should_not(be_nil, "Could not find the text '#{arg1}' within the selector 'li'")
end
