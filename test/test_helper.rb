ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper # includes application helper methods to be used by all tests
  # Add more helper methods to be used by all tests here...
  def is_logged_in?
      !session[:user_id].nil?
  end
end
