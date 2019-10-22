# frozen_string_literal: true

require 'simplecov'
require 'service_it'

SimpleCov.minimum_coverage 100
SimpleCov.start do
  add_filter '/spec/'
end

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

Dir['./spec/support/**/*.rb'].each { |f| require f }
