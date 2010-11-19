# Tartare

I like `Steak`, but I'd rather an steak **Tartare** for my integration tests.
To start using it include in your `Gemfile` the following gems:

    group :test do
      gem 'tartare', :git => 'https://github.com/fesplugas/rails-tartare.git', :require => 'tartare'
    end

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

If you are using `shoulda` you can alias the `context` and `should` method to
`feature` and `scenario` to make it more `awesome`.

    module Shoulda

      module ClassMethods

        alias :feature :context
        alias :scenario :should

      end

    end


Enjoy!
