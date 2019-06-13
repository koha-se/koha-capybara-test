# barcode: 15000600409584 
# patron: 0471502349
# url: https://koha-test.lub.lu.se:8443/cgi-bin/koha/members/moremember.pl?borrowernumber=3348286
# feature/staff_delete_hold.feature
# Feature: As a librarian I want to delete a request as the patron doesn't want it anymore
# Scenario:
#  Given I am logged in
#  And on the patron's page
#  When I click on 1 Reservation(er)
#  And chose JA in the Radera column drop down menu
#  And click Annulera markerade reservationer
#  Then I will see '0 Reservationer' on the screen


Given /^I am logged in$/ do
  staff_login
  add_request
#  expect(page).to have_content('bajsat')
 end 

And /^on the patron's page$/ do
   click_on('0471502349') 
 expect(page).to have_content('Testkonto')

 end

When /^I click on Holds tab$/ do
   visit(KOHA_TEST_STAFF_BASE + "/cgi-bin/koha/circ/circulation.pl?borrowernumber=3348286#reserves")
   expect(page).to have_text('bajsat')

  end

And /^chose JA in the Radera column drop down menu$/ do
  expect(page).to have_select('rank-request')
  select('JA', :from => 'rank-request')
  
 end

And /^click Annullera markerade reservationer$/ do
  page.execute_script("$('input.cancel').click()");
  end

Then /^I will see '0 Reservationer' on the screen$/ do
  expect(page). to have_text('0 Reservationer')
  end

