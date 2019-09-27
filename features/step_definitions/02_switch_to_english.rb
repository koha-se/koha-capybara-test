#Feature: Switch to english
#  As a patron
#  I want to change the language
#  So that I go to the English OPAC

Given(/^I am on the Swedish Opac$/) do
  visit(KOHA_OPAC_BASE)
  expect(page).to have_content 'Logga in på ditt konto'
end

When(/^I click on 'Språk'$/) do
  click_link 'Språk'
end

When(/^select English$/) do
  within("#members") do
    click_link 'English'
  end
end

Then (/^I should see the English Opac$/) do
  expect(page).to have_content 'Log in to your account'
end
