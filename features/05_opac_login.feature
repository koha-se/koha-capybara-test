# features/opac_login.feature
# feature description in user story format
Feature: Go to opac login page, login
Scenario:
  Given I go to the login page
  When I enter my username and password and submit 
  Then I get logged in
