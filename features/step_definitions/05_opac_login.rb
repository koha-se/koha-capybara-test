# features/opac_login.feature
# feature description in user story format
#Feature: Go to opac login page, login
#Scenario:
#  Given I go to the login page
#  When I enter my username and password and submit 
#  Then I get logged in

Given(/^I go to the login page$/) do
  visit(KOHA_TEST_OPAC_BASE + KOHA_TEST_OPAC_LOGIN_PAGE)
end

When(/^I enter my username and password and submit$/) do
  fill_in 'j_username', with: TEST_USER_USERNAME
  fill_in 'j_password', with: TEST_USER_PW
  click_button 'LOGGA IN'
end

Then (/^I get logged in$/) do
  expect(page).to have_content 'Hej, ' + TEST_USER_FULLNAME
end

