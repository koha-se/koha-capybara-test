# features/search_book.feature
# feature description in user story format
Feature: Go to opac front page, search for book, check results
Scenario:
  Given I got the search result for 'takeaway'
  When I click for book details
  Then I see the order button
