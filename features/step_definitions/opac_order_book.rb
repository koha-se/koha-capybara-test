# url:https://koha-test.lub.lu.se/cgi-bin/koha/opac-detail.pl?biblionumber=768049
# features/opac_order_book.feature
# Feature: As an opac user I want to be able to request a book so that I can borrow it
# Scenario:
#   Given that I have opened the catalogue record
#   When I click on Beställ detta exemplar
#   And have selected Välj avhämtningsställe Sambib
#   Then I should get the message Beställning skickad


Given /^I have opened the catalogue record$/ do
     opac_login
     opac_open_exemplar
end
 
When /^I click on Beställ detta exemplar$/ do
    click_button 'Beställ detta exemplar'
    expect(page).to have_text 'Beställ den här boken'
end

And /^have selected Välj avhämtningsställe Sambib$/ do
     select('Sambib', :from => 'pickupbranch')
     click_button 'Skicka beställning'
end

Then /^I should get the message Beställning skickad$/ do
     expect(page).to have_text 'Beställning skickad'
     opac_logout
     staff_login
     delete_hold
     staff_logout
end
    
