# hello.feature
When(/^I navigate to the opac$/) do
  visit(KOHA_TEST_OPAC_BASE)
end

Then (/^I read it$/) do
  expect(page).to have_content 'Avancerad sökning'
end
