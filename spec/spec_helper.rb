require 'simplecov'

SimpleCov.minimum_coverage 100
SimpleCov.start do
  add_filter '/spec/'
end

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'service_it'

Dir['./spec/support/**/*.rb'].each { |f| require f }
