# frozen_string_literal: true

require File.expand_path('lib/service_it/version', __dir__)

Gem::Specification.new do |s|
  s.name        = 'service_it'
  s.version     = ServiceIt::VERSION
  s.date        = '2018-07-27'
  s.authors     = ['Iago Silva']
  s.email       = 'iago.silva@interage.in'
  s.homepage    = 'https://github.com/iago-silva/service_it'
  s.license     = 'MIT'
  s.summary     = 'Simple gem to keep your controllers and models slim and
                  readable'
  s.description = 'Service objects are a holy grail to keep your controllers and
                  models slim and readable'

  s.files       = Dir['lib/**/*', '*.md']
  s.test_files  = Dir['spec/**/*']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
end
