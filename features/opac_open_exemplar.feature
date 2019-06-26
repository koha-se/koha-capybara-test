# url: https://lubcat.lub.lu.se/
# bib post: opac-detail.pl?biblionumber=768049
# features/opac_open_exemplar.feature
Feature: As an opac user I want to be able to open a catalogue post in the hitlist so that I can get more information about it
Scenario: 
   Given I have searched for Robert Doisneau in the opac
   When I click on Robert Doisneau retrospective Peter Hamilton 
   Then I should see the Exemplar view
