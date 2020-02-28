require "capybara"
require "capybara/cucumber"
require "site_prism"
require "site_prism/all_there"
require "selenium-webdriver"
require "rspec"
require "ffi"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30)
end
Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
end
