This is our current test-set, only change is that we removed the
account details in variables.rb.

We have both opac and staff interface from koha and we have
two login methods, organization shibboleth login and 
"ordinary" login, where you use personnummer and a pin.

It is a mix of older and newer tests and has a mix of writing
variables in the code and having them in the variables file.

When you have all RUBY and other stuff installed it should be 
possible to run all tests using

bundle exec cucumber

We have a plan to add tags to the tests to be able to run a set of
tests instead of one or all.

Added use of ENV variable, so you can use 

TESTING_ENV=test bundle exec cucumber

which will use our test server.

Run only one test like this:

TESTING_ENV=test bundle exec cucumber features/staff_checkout_book.feature

