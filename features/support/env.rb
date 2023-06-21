require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

EL = YAML.load_file('data/elements.yml')
Capybara.default_max_wait_time = 40