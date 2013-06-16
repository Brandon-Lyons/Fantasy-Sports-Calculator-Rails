Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create( email: email, password: password, first_name: "test", last_name: "user")
  refute user.new_record?
end


When(/^I go to the homepage$/) do
  visit "/"
end

When "show me the page" do
  save_and_open_page
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_named, value|
  fill_in field_named, with: value
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_named|
  fill_in field_named, with: value
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end

Then(/^I should be able to log back in as "(.*?)" with password "(.*?)"$/) do |email, password|
  User.create( email: email, password: password) unless User.find_by_email(email)
  click_link_or_button "Sign out"
  click_link_or_button "Sign In"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_link_or_button "Log In"
  page.should have_content("Hello,")
end

Given(/^the league "(.*?)" has been created$/) do |name|
  FootballLeague.create(name: name)
  UserFootballLeague.create(user_id: User.last.id, football_league_id: FootballLeague.last.id)
end

When(/^I log in as "(.*?)" with password "(.*?)"$/) do |email, password|
  click_link_or_button "Sign In"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_link_or_button "Log In"
end