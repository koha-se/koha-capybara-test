#lucard: 1082860590
#barcode: 15000600906674
#url: https://koha-test.lub.lu.se:8443/
#login: ub-adam
#current_user: ub2183te 
#feature/staff_checkout_book.feature 
#Feature: As a librarian I want to check out a book to a patron
# Scenario:
#	Given I am logged in to staff page 
#	When I type lucard
#	And click Skicka
#	And type barcode
#	And click Låna ut 
#	Then I will see the text 'Utlånad: Tillrättalägganden' on the screen


Given /^I am logged in to staff page$/ do
  staff_login
  checkin_book
 end 

When /^I type lucard$/ do
  fill_in 'findborrower', with: '1082860590' 
  end

And /^click Skicka$/ do
  click_button 'Skicka', match: :first
  end 

And /^type barcode$/ do
  fill_in 'barcode', with: 15000600906674 
  end

And /^click Låna ut$/ do
  click_button 'Låna ut'
  end

Then /^I will see the text 'Utlånad: Tillrättalägganden' on the screen$/ do
  expect(page).to have_content 'Utlånad: Tillrättalägganden' 
  end
