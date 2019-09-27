# url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/members/pay.pl?borrowernumber=257128
# patron: 1082860590
# barcode: 15000400646787
# feature/staff_pay_fee.feature
# Feature: As a librarian I want to accept payment for a late fee so the fine is removed
# Scenario:
#   Given I am on the patron's pay fee page
#   When I click on Betala # for barcode 15000400646787
#   And I see the text 'Betala en enskild bot' on the page
#   And I click on Bekräfta
#   Then I see the text 'Totalt skyldig:' on the screen

Given /^I am on the patron's pay fee page$/ do
  staff_login
  add_fee
  fill_in 'findborrower', with: CARD_FILIPPA
  click_button 'Skicka'
  expect(page).to have_text FULLNAME_FILIPPA
  click_link STAFF_ACCOUNTING_LINK
  expect(page).to have_text STAFF_PAYMENT_TAB
end

When /^I click on Betala$/ do
  click_button 'Betala', match: :first
  expect(page).to have_text 'Betala en enskild bot'
end

And /^I click on Bekräfta$/ do
  click_button 'Bekräfta'
end

Then /^I see the text Filippa Stark har inga obetalda böter$/ do
  expect(page).to have_text STAFF_NO_FEE_TEXT
end 
