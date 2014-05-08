ENV["RAILS_ENV"] ||= 'test'
require 'simplecov'
SimpleCov.start do
  add_filter "spec/"
end

require 'support/active_record'
require 'active_support'
require 'pry'
require 'set_default'

I18n.enforce_available_locales = false

RSpec.configure do |config|
  config.color_enabled = true
end
