require 'test_helper'
require 'capybara/rails'
# require "#{Rails.root}/db/seeds"

module ActionController

  class IntegrationTest
    include Capybara

    Capybara.register_driver :selenium_chrome do |app|
         Capybara::Driver::Selenium.new(app, :browser => :chrome)
    end

    # Capybara.default_driver = :selenium_chrome
  end

end

module Shoulda

  module ClassMethods

    alias :feature :context
    alias :scenario :should

  end

end
