ENV["RAILS_ENV"] ||= 'test'
require 'simplecov'
SimpleCov.start do
  add_filter "spec/"
end

require 'support/active_record'
require 'active_support'
require 'set_default'

RSpec.configure do |config|
  config.color_enabled = true
end
