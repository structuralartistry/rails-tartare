# test/integration_test_helper.rb

require 'test_helper'
require 'capybara/rails'

module ActionController

  class IntegrationTest
    include Capybara
  end

end

module Shoulda

  module ClassMethods

    alias :feature :context
    alias :scenario :should

  end

end
