require 'integration_test_helper'

class ExampleTest < ActionController::IntegrationTest

  feature "User visits the site" do

    scenario "create a new account" do

      visit '/'
      click_link "Create Account"

      fill_in 'Email', :with => 'john.locke@lost.com'
      fill_in 'Password', :with => '4815162342'
      fill_in 'Password confirmation', :with => '4815162342'
      click 'Sign up'

      assert page.has_content?('Welcome')

    end

  end

end
