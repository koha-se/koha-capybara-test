#url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/mainpage.pl
#patron: 1082860590
# features/staff_search_patron.feature
Feature: As a librarian I want to find a patron so I can update the record
Scenario:
  Given I am logged in to staff
  When I search for lucard in search box
  Then I find patron Filippa Stark
