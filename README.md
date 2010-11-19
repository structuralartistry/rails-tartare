# Tartare

I like [Steak][1], but I'd rather an steak **Tartare** for my integration tests.
To start using it include in your `Gemfile` the following gems and require it
on `test_helper`.

    # Gemfile
    group :test do
      gem 'tartare', :git => 'https://github.com/fesplugas/rails-tartare.git', :require => false
    end

    # test_helper.rb
    require 'tartare'

**Tartare** will install [Capybara][2] for you. By default `integration` tests
are performed with `Google Chrome`. Capybara's DSL is available at [Capybara][2].

## Usage

Create an integration test:

    $ rails generate integration_test welcome

And start using it ...

    require 'test_helper'

    class WelcomeTest < ActionDispatch::IntegrationTest
      fixtures :all

      # Replace this with your real tests.
      test "sign in" do
        visit '/'
        fill_in('Email', :with => 'john.locke@lost.com')
        fill_in('Password', :with => '4815162342')
        click_button('Sign in')
      end
    end

## Tip

Remember you can use alias to match method names with your preferences. Lets
say you are using shoulda and want to use `context` and `should` on your tests.

    module Shoulda

      module ClassMethods

        alias :feature :context
        alias :scenario :should

      end

    end

You can do the same for [Contest][3], [Minitest][4].

Copyright © 2010 Francesc Esplugas, released under the MIT license

[1]: http://rubygems.org/gems/steak
[2]: http://rubygems.org/gems/capybara
[3]: http://rubygems.org/gems/contest
[4]: http://rubygems.org/gems/minitest
