
# url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/members/pay.pl?borrowernumber=257128
# patron: 1082860590 
# barcode: 15000400646787 
# feature/staff_pay_fee.feature
Feature: As a librarian I want to accept payment for a late fee so the fine is removed
Scenario:
  Given I am on the patron's pay fee page
  When I click on Betala 
  And I click on Bekräfta
  Then I see the text Filippa Stark har inga obetalda böter
