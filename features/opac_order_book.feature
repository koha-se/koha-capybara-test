# url:https://koha-test.lub.lu.se/cgi-bin/koha/opac-detail.pl?biblionumber=768049
#features/opac_order_book.feature
Feature: As an opac user I want to be able to request a book so that I can borrow it
Scenario:
   Given I have opened the catalogue record 
   When I click on Beställ detta exemplar
   And have selected Välj avhämtningsställe Sambib
   Then I should get the message Beställning skickad
