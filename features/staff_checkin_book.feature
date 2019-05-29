#book:      15000400646787     
# feature/staff_checkin_book.feature
Feature: As a librarian I want to check in a book so I can help the patron
Scenario:
  Given I have chosen the Återlämna tab on the search box
  When I type barcode in box
  And I click submit 
  Then the book is returned and I see the text Återlämnade exemplar
