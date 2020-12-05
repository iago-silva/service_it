# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'service_it'

Dir['./spec/support/**/*.rb'].sort.each { |f| require f }
