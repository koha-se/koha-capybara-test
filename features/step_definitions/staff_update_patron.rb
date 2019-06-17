# patron: 1082860590 
# feature/staff_updating_patron.feature
# Feature:
# As a librarian I want to change patron type for a patron
# Scenario:
# Given I am on patron record
# When I click Redigera
# And change Kategori Externa låntagare bosatta i Sverige till Student juridik
# And click Spara
# Then I see Filippa Stark on the screen

Given /^I am on patron record$/ do
   staff_login
   update_patron
   fill_in 'findborrower', with: '1082860590'
   click_button 'Skicka'
   expect(page).to have_text 'Filippa'
   end

When /^I click Redigera$/ do
    find("[id=editpatron]").click
  expect(page).to have_text 'Modifiera' 
 end

And /^change Kategori to Student juridik$/ do
   expect(page).to have_select(id = 'categorycode_entry')
   select('Student juridik', :from => 'categorycode_entry')
  end

And /^click Spara$/ do
   click_button 'Spara'
  end

Then /^I see Filippa Stark on the screen$/ do
   expect(page). to have_content('Filippa')
  end

   
