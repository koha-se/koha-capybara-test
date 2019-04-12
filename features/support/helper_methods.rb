#features/support/helper_methods.rb

module LoginUser
  def login_user()
    visit(KOHA_TEST_OPAC_BASE + KOHA_TEST_OPAC_LOGIN_PAGE)
    # debug to see what page we are on
    expect(page).to have_content 'LUBcat Test'
    fill_in 'j_username', with: TEST_USER_USERNAME
    fill_in 'j_password', with: TEST_USER_PW
    click_button 'LOGGA IN'
  end
end
