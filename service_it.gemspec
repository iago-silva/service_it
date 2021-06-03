# frozen_string_literal: true

require File.expand_path('lib/service_it/version', __dir__)

Gem::Specification.new do |s|
  s.name        = 'service_it'
  s.version     = ServiceIt::VERSION
  s.date        = '2018-07-27'
  s.authors     = ['Iago Silva']
  s.email       = ['iago.cith@hotmail.com']
  s.homepage    = 'https://github.com/iago-silva/service_it'
  s.license     = 'MIT'
  s.summary     = 'Simple gem to keep your controllers and models slim and
                  readable'
  s.description = 'Service objects are a holy grail to keep your controllers and
                  models slim and readable'

  s.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  s.metadata['homepage_uri']    = s.homepage
  s.metadata['source_code_uri'] = s.homepage

  s.files      = Dir['lib/**/*', '*.md']
  s.test_files = Dir['spec/**/*']

  s.add_development_dependency 'pry', '0.13.1'
  s.add_development_dependency 'rspec', '3.10.0'
  s.add_development_dependency 'rubocop', '1.5.1'
  s.add_development_dependency 'rubocop-rspec', '2.0.1'
end
