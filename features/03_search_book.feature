# features/search_book.feature
# feature description in user story format
Feature: Go to opac front page, search for book, check results
Scenario:
  Given I navigated to the OPAC front page
  When I search for 'takeaway'
  Then I find book where one of the writer names is 'Annelis Dahlquist'
