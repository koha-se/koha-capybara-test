require 'rubygems'
require 'capybara/cucumber'
require 'selenium-webdriver'
require File.expand_path(File.dirname(__FILE__) + "/helper_methods")
#require File.expand_path(File.dirname(__FILE__) + "/variables")

browser_options = ::Selenium::WebDriver::Chrome::Options.new
browser_options.headless!

Capybara.register_driver :selenium_chrome do |app|
  driver = Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

Capybara.default_driver = :selenium_chrome
