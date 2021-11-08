require "capybara"
require "capybara/cucumber"
require "allure-cucumber"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.lolja.com.br"
  config.default_max_wait_time = 20
end

Allure.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
