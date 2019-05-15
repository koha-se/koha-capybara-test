# url: https://koha-test.lub.lu.se:8443
# login: ub-adam
# features/staff_login.feature
# Feature: As a staff user I want to log in to LUBcat personal so I can work
# Scenario:
# Given I go to staff pages
# When I log in with lucat details
# Then I am logged in and UB-Adam is found on the page
include Login

When /^I log in on staff pages with lucat details$/ do
  staff_login
  expect(:current_user?).to be_truthy
end

Then /^I am logged in and UB-Adam is found on the page$/ do
  expect(page).to have_content FIRSTNAME_ADAM
  staff_logout
end
