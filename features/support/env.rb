
require 'cucumber/rails'
require 'capybara/dsl'
require 'capybara'
require 'capybara/cucumber'


ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end


