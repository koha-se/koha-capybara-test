# features/opac_running.feature
# Feature: As an opac user I want to go to the opac so that I can use it
# Scenario:
# When I visit the opac
# Then I see login text
When (/^I visit the opac$/) do
  visit(KOHA_TEST_OPAC_BASE)
end
Then (/^I see the login text$/) do
  expect(page).to have_content OPAC_TEXT_SV_LOGIN
end
