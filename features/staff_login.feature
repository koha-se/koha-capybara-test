#url: https://koha-test.lub.lu.se:8443
#login: ub-adam
# features/staff_login.feature
Feature: As a staff user I want to log in to LUBcat personal so I can work
Scenario:
  When I log in on staff pages with lucat details
  Then I am logged in and UB-Adam is found on the page
