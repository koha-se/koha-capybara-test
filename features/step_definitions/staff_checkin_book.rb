#book:      15000400646787     
# feature/staff_checkin_book.feature
# Feature: As a librarian I want to check in a book so I can help the patron
# Scenario:
#   Given I have chosen the Återlämna tab on the search box
#   When I type the barcode in the search box 
#   And click submit 
#   Then the book is returned and I see the text 'Återlämnade exemplar'


Given /^I have chosen the Återlämna tab on the search box$/ do
  staff_login

end

When /^I type barcode in box$/ do
	click_link STAFF_CHECKIN 
	fill_in 'ret_barcode', with: 15000400646787
	 
end 
 
When /^I click submit$/ do
  click_button 'Skicka'

end

Then /^the book is returned and I see the text Återlämnade exemplar$/ do
  expect(page).to have_content 'Återlämnade exemplar'

end
