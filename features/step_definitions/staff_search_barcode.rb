# barcode: 15000600906674
# url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/mainpage.pl
# feature/staff_search_barcode.feature
#Feature: As a librarian I want to search for a barcode so I can handle the book
#Scenario:
#  Given I have chosen Sök katalogen in the search box
#  When I enter barcode
#  And click on Skicka
#  Then I see the text 'Tillrättalägganden' on the screen


Given /^I have chosen Sök katalogen in the search box$/ do
  staff_login

end

When /^I enter barcode$/ do
  click_link 'Sök katalogen'
  fill_in 'search-form', with: 15000600906674

end

When /^click on Skicka$/ do
  click_button 'Skicka'

end

Then /^I see the text 'Tillrättalägganden' on the screen$/ do
  expect(page).to have_content 'Tillrättalägganden'

end
