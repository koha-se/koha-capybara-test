Given /^I log in$/ do
  opac_login
  expect(:current_user?).to be_truthy
end

Then /^I am logged in to opac$/ do
  expect(page).to have_content 'Hej, ' + FIRSTNAME_ADAM
  opac_logout
end
