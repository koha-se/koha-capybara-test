#barcode: 15000600906674
#url: https://koha-test.lub.lu.se:8443/
#feature/staff_checkout_book.feature 
Feature: As a librarian I want to check out a book to a patron
Scenario: 
	Given I am logged in to staff page  
	When I type lucard
	And click Skicka
	And type barcode 
	And click Låna ut 
	Then I will see the text 'Utlånad: Tillrättalägganden' on the screen
