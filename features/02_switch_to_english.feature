Feature: Switch to english
  As a patron
  I want to change the language
  So that I go to the English OPAC

Scenario: 
  Given I am on the Swedish Opac
  When I click on 'Språk'
  And select English
  Then I should see the English Opac
