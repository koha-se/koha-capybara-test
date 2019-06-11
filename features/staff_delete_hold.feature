# barcode: 15000600409584 
# patron: 0471502349
# url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/members/moremember.pl?borrowernumber=3348286
# feature/staff_delete_hold.feature
Feature: As a librarian I want to delete a request as the patron doesn't want it anymore
Scenario:
  Given I am logged in
  And on the patron's page
  When I click on Holds tab 
  And chose JA in the Radera column drop down menu
  And click Annullera markerade reservationer
  Then I will see '0 Reservationer' on the screen
