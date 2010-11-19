# Tartare

I like `Steak`, but I'd rather an steak **Tartare** for my integration tests.
To start using it include in your `Gemfile` the following gems and require it
on `test_helper`.

    # Gemfile
    group :test do
      gem 'tartare', :git => 'https://github.com/fesplugas/rails-tartare.git', :require => false
    end

    # test_helper.rb
    require 'tartare'

## Usage

Create an integration test:

    $ rails generate integration_test welcome

And start using it ...

    require 'test_helper'

    class WelcomeTest < ActionDispatch::IntegrationTest
      fixtures :all

      # Replace this with your real tests.
      test "the truth" do
        visit '/'
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

You can do the same for `contest`, `minitest` ...
