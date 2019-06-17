
# patron: 1082860590 
# feature/staff_update_patron.feature
Feature: As a librarian I want to change patron type for a patron
Scenario:
  Given I am on patron record
  When I click Redigera
  And change Kategori to Student juridik
  And click Spara
  Then I see Filippa Stark on the screen
