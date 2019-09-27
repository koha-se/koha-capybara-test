#features/support/helper_methods.rb

module Login
  def opac_login()
    visit(KOHA_OPAC_BASE + KOHA_OPAC_LOGIN_PAGE)
    click_link 'Övriga användare'
    fill_in 'userid', with: PNR_ADAM
    fill_in 'password', with: PIN_ADAM
    click_button 'Logga in'
  end

  def opac_logout()
    visit(KOHA_OPAC_BASE)
    click_link 'Logga ut'
  end

  def staff_login()
    visit(KOHA_STAFF_BASE)
    # debug to see what page we are on
    expect(page).to have_content 'Användarnamn'
    fill_in 'userid', with: PNR_ADAM
    fill_in 'password', with: PIN_ADAM
    click_button 'Logga in'
  end

  def staff_logout()
    visit(KOHA_STAFF_BASE)
    within('.navbar-right') do
      expect(page).to have_content FIRSTNAME_ADAM
      click_link FIRSTNAME_ADAM
      click_link 'Logga ut'
    end
    expect(page).to have_content 'Användarnamn:'
  end

  def shib_opac_login()
    visit(KOHA_OPAC_BASE + KOHA_OPAC_SHIB_LOGIN_PAGE)
    # debug to see what page we are on
    fill_in 'j_username', with: USERNAME_ADAM
    fill_in 'j_password', with: PW_ADAM
    click_button 'LOGGA IN'
  end

  def shib_staff_login()
    visit(KOHA_STAFF_BASE + KOHA_STAFF_SHIB_LOGIN_PAGE)
    # debug to see what page we are on
    expect(page).to have_content 'LUBcat'
    fill_in 'j_username', with: USERNAME_ADAM
    fill_in 'j_password', with: PW_ADAM
    click_button 'LOGGA IN'
  end

  def add_request()
   visit (KOHA_STAFF_BASE + "/cgi-bin/koha/reserve/request.pl?biblionumber=758165")
    fill_in 'patron', with: CARD_FILIPPA
    click_button 'Sök'
    #page.current_window.resize_to(1400, 1400)
    click_button 'Reservera', match: :first
  end

  def checkin_book()
      visit (KOHA_STAFF_BASE)
      click_link 'Återlämna'
      fill_in 'ret_barcode', with: '15000600906674'
      click_button 'Skicka'
  end

  def update_patron()
    visit (KOHA_STAFF_BASE)
    fill_in 'findborrower', with: '1082860590'
    click_button 'Skicka'
    find("[id=editpatron]").click
    select('Externa låntagare bosatta i Sverige', :from => 'categorycode_entry')
    click_button 'Spara'
  end

  def add_fee()
    visit (KOHA_STAFF_BASE)
    fill_in 'findborrower', with: CARD_FILIPPA
    click_button 'Skicka'
    click_link STAFF_ACCOUNTING_LINK 
    click_link 'Skapa manuell faktura'
    select(STAFF_SELECT_FEE, :from => 'invoice_type')
    fill_in 'barcode', with: '15000400798441'
    fill_in 'amount', with: '10'
    click_button 'Spara' 
    expect(page).to have_text 'Generation X'
    click_link 'LUBcat'
  end

  def delete_hold()
    visit (KOHA_STAFF_BASE)
    click_link 'Sök låntagare'
    fill_in 'searchmember', with: PNR_ADAM
    click_button 'Skicka'
    click_link('1 Reservation(er)')
    expect(page).to have_text 'London'
    select('JA', :from => 'rank-request')
    page.execute_script("$('input.cancel').click()");
  end

  def opac_open_exemplar() 
    visit(KOHA_OPAC_BASE)
    fill_in 'translControl1', with: 'Robert Doisneau'
    click_button 'Sök'
    click_link 'Robert Doisneau : retrospective / Peter Hamilton'
   end 

end
module JavascriptDriver
  # other code that prepares capybara to work with selenium

  def scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS

    Capybara.current_session.driver.browser.execute_script(script, element.native)
  end
end
