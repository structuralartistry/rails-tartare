require 'capybara/rails'

module ActionController

  class IntegrationTest
    include Capybara

    Capybara.register_driver :selenium_chrome do |app|
         Capybara::Driver::Selenium.new(app, :browser => :chrome)
    end

    Capybara.default_driver = :selenium_chrome
  end

end
