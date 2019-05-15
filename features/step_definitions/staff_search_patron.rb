# features/staff_search_patron.feature
# Feature: As a librarian I want to find a patron so I can update the record
# Scenario:
#  Given I am logged in to staff
#  When I search for lucard in search box
#  Then I find patron Filippa Stark

include Login

Given /^I am logged in to staff$/ do
  staff_login
  expect(:current_user?).to be_truthy
end

When /^I search for lucard in search box$/ do
  click_link STAFF_BUTTON_SV_PATRON_SEARCH
  fill_in 'searchmember', with: STAFF_SEARCH_LUCARD_NUMBER 
  click_button 'Skicka'
end

Then /^I find patron Filippa Stark$/ do
  expect(page).to have_content FULLNAME_FILIPPA
  staff_logout
end
