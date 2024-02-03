require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
# Use the appropriate path here
require File.expand_path("../../../../config/environment", __FILE__)

if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'rspec/rails'

# Require our dependencies
require 'factory_bot_rails'
require 'database_cleaner'
require 'faker'

# Set the ENGINE_RAILS_ROOT variable
ENGINE_RAILS_ROOT = File.join(File.dirname(__FILE__), '../../')

# Requires supporting Ruby files with custom matchers and macros, etc,
# from spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, 'core/spec/support/**/*.rb')].each do |f|
  require f
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  # Define how we want Database Cleaner to work
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Load the Core path helpers
  config.include Blast::Core::Engine.routes.url_helpers
end