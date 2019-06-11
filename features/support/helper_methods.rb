#features/support/helper_methods.rb

module Login
  def opac_login()
    visit(KOHA_TEST_OPAC_BASE + KOHA_TEST_OPAC_LOGIN_PAGE)
    # debug to see what page we are on
    expect(page).to have_content 'LUBcat Test'
    fill_in 'j_username', with: USERNAME_ADAM
    fill_in 'j_password', with: PW_ADAM
    click_button 'LOGGA IN'
  end

  def staff_login()
    visit(KOHA_TEST_STAFF_BASE + KOHA_TEST_STAFF_LOGIN_PAGE)
    # debug to see what page we are on
    expect(page).to have_content 'LUBcat'
    fill_in 'j_username', with: USERNAME_ADAM
    fill_in 'j_password', with: PW_ADAM
    click_button 'LOGGA IN'
  end

  def opac_logout()
    visit(KOHA_TEST_OPAC_BASE)
    click_link 'Logga ut'
  end

  def staff_logout()
    visit(KOHA_TEST_STAFF_BASE)
    within('.navbar-right') do
      expect(page).to have_content FIRSTNAME_ADAM
      click_link FIRSTNAME_ADAM
      click_link 'Logga ut'
   
    expect(page).to have_content 'Du har loggat ut'
  end

  def checkin_book()
    visit(KOHA_TEST_STAFF_BASE) do
     fill_in '.residentsearch', with: barcode
   
    click_button 'submit'
   end 
    expect(page).to have_content 'Återlämnade exemplar'
  end
 end
end

# def reserve_book()
#  visit(KOHA_TEST_STAFF_BASE + '/cgi-bin/koha/reserve/request.pl?biblionumber=1183707') do
#  fill_in '.patron', with: '0471502349'
#  click_button 'submit'
#  choose(checkitem, 'value="948261"')

  def add_request()
    visit(KOHA_TEST_STAFF_BASE + "/cgi-bin/koha/reserve/request.pl?biblionumber=758165")
    fill_in 'patron', with: '0471502349'
    click_button 'Sök'
    click_button 'Reservera', match: :first
   end 
