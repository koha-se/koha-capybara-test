Given(/^I navigated to the OPAC front page$/) do
  visit(KOHA_TEST_OPAC)
end

When(/^I search for 'takeaway'$/) do
  fill_in 'translControl1', with: OPAC_SEARCH_STRING
  #find_element(:id, 'searchsubmit').click
  click_button 'searchsubmit'
end

Then (/^I find book where one of the writer names is 'Annelis Dahlquist'$/) do
  # works
  #expect(page).to have_content 'Annelis Dahlquist'

# wrong
#    has_link("/cgi-bin/koha/opac-detail.pl?biblionumber=1761403")

  @titles = all('.title').each { |a| a[:href] }
  @titles.each do |title|
    expect(page).to have_link("Annelis Dahlquist", href: "/cgi-bin/koha/opac-detail.pl?biblionumber=1761403")

  end

# wrong
  #expect(find('.title_resp_stmt')).to have_content 'Annelis Dahlquist'
end
