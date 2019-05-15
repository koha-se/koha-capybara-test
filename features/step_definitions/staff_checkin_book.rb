#book:      15000400646787     
# feature/staff_checkin_book.feature
# Feature: As a librarian I want to check in a book so I can help the patron
# Scenario:
#   Given I have chosen the Återlämna tab on the search box
#   When I type the barcode 
#   And click Skicka
#   Then the book is returned and I see the text 'Återlämnade exemplar'


Given /^I have chosen the Återlämna tab on the search box$/ do
  staff_login

end

When /^I type the barcode$/ do

end

And /^click Skicka$/ do

end

Then /^the book is returned and I see the text 'Återlämnade exemplar'$/ do

  staff_logout
end
