#  Given I got the search result for 'takeaway'
#  When I click for book details
#  Then I see the order button

Given(/^I got the search result for 'takeaway'$/) do
  visit(KOHA_OPAC_BASE + "/cgi-bin/koha/opac-search.pl?idx=&q=takeaway&branch_group_limit=")
end

When(/^I click for book details$/) do
  find_link("Takeaway ; och Bondens brorsdotter / översättning: Annelis Dahlquist").click
end

Then (/^I see the order button$/) do
  find_button("Beställ detta exemplar")
end
