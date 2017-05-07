ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class MiniTest::Spec
  include FactoryGirl::Syntax::Methods

  DatabaseCleaner.clean_with :truncation
  DatabaseCleaner.strategy = :truncation

  def setup
    DatabaseCleaner.start
    super
  end

  def teardown
    super
    DatabaseCleaner.clean
    #Sidekiq::Worker.clear_all
  end

  def app
    Rails.application
  end
end
