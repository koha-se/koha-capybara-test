include LoginUser

Given /^I log in$/ do
  login_user
  expect(:current_user?).to be_truthy
end

Then /^I am logged in$/ do
  expect(page).to have_content 'Hej, ' + TEST_USER_FULLNAME
end
