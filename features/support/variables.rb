## variables for testing
##
## URLs should depend on what environment we want to test
##

include JavascriptDriver

case ENV['TESTING_ENV']
## test merge 
when 'merge' then
  # URLs
  # OPAC base url
  KOHA_OPAC_BASE = 'https://koha-merge-dev.lub.lu.se'
  # OPAC other login url
  KOHA_OPAC_LOGIN_PAGE = '/cgi-bin/koha/opac-user.pl'

  # STAFF base url
  KOHA_STAFF_BASE = 'https://koha-merge-dev.lub.lu.se:8443'
  # STAFF other login url
  KOHA_STAFF_LOGIN_PAGE = ''
  STAFF_ACCOUNTING_LINK = 'Accounting'
  STAFF_SELECT_FEE = 'Avgift'
  STAFF_PAYMENT_TAB = 'Make a payment'
  STAFF_NO_FEE_TEXT = 'Filippa Stark har inga obetalda avgifter'
## test production
when 'prod' then
  # URLs
  # OPAC base url
  KOHA_OPAC_BASE = 'https://lubcat.lub.lu.se'
  # OPAC other login url
  KOHA_OPAC_LOGIN_PAGE = '/cgi-bin/koha/opac-user.pl'
  # OPAC shibboleth login url
  KOHA_OPAC_SHIB_LOGIN_PAGE = '/Shibboleth.sso/Login?target=https://lubcat.lub.lu.se/cgi-bin/koha/opac-user.pl'

  # STAFF base url
  KOHA_STAFF_BASE = 'https://lubcat.lub.lu.se:8443'
  # STAFF other login url
  KOHA_STAFF_LOGIN_PAGE = ''
  # STAFF shibboleth login url
  KOHA_STAFF_SHIB_LOGIN_PAGE = '/Shibboleth.sso/Login?target=https://lubcat.lub.lu.se:8443/cgi-bin/koha/mainpage.pl'
  STAFF_ACCOUNTING_LINK = 'Böter'
  STAFF_SELECT_FEE = 'Böter'
  STAFF_PAYMENT_TAB = 'Betala böter'
  STAFF_NO_FEE_TEXT = 'Filippa Stark har inga obetalda böter'
## test koha-test
else
  # use this for default which means test koha-test
  # URLs
  # OPAC base url
  KOHA_OPAC_BASE = 'https://koha-test.lub.lu.se'
  # OPAC other login url
  KOHA_OPAC_LOGIN_PAGE = '/cgi-bin/koha/opac-user.pl'
  # OPAC shibboleth login url
  KOHA_OPAC_SHIB_LOGIN_PAGE = '/Shibboleth.sso/Login?target=https://koha-test.lub.lu.se/cgi-bin/koha/opac-user.pl'

  # STAFF base url
  KOHA_STAFF_BASE = 'https://koha-test.lub.lu.se:8443'
  # STAFF other login url
  KOHA_STAFF_LOGIN_PAGE = ''
  # STAFF shibboleth login url
  KOHA_STAFF_SHIB_LOGIN_PAGE = '/Shibboleth.sso/Login?target=https://koha-test.lub.lu.se:8443/cgi-bin/koha/mainpage.pl'
  STAFF_ACCOUNTING_LINK = 'Böter'
  STAFF_SELECT_FEE = 'Böter'
  STAFF_PAYMENT_TAB = 'Betala böter'
  STAFF_NO_FEE_TEXT = 'Filippa Stark har inga obetalda böter'
end

# User details
# ADAM is our test librarian account
USERNAME_ADAM = ''
PW_ADAM = ''
PNR_ADAM = ''
PIN_ADAM = ''
FIRSTNAME_ADAM = ''
# FILIPPA is our test user
USERNAME_FILIPPA = ''
PW_FILIPPA = ''
PNR_FILIPPA = ''
PIN_FILIPPA = ''
CARD_FILIPPA = ''
FIRSTNAME_FILIPPA = ''
FULLNAME_FILIPPA = ''

# texts to look / search for
OPAC_TEXT_SV_LOGIN = 'Logga in'
OPAC_SEARCH_STRING = 'takeaway'
STAFF_SEARCH_LUCARD_NUMBER = '1082860590'
STAFF_BUTTON_SV_PATRON_SEARCH = 'Sök låntagare'
STAFF_BUTTON_EN_PATRON_SEARCH = 'Search patrons'
STAFF_CHECKIN = 'Återlämna'

# books etc
barcode = '15000400646787'
