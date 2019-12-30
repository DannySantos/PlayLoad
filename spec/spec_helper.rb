# frozen_string_literal: true

# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
Hanami.boot
Hanami::Utils.require!("#{__dir__}/support")
require_relative './factory_bot_helper'

RSpec.configure do |config|
  config.order = :random

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.after(:each, js: true) do |_example|
    DatabaseCleaner.clean
  end
end
