# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'config-reader/version'

Gem::Specification.new do |s|
  s.name        = 'config-reader'
  s.version     = ConfigReader::VERSION
  s.required_ruby_version = Gem::Requirement.new('>= 2.4')
  s.authors     = ['Ryan Tulino']
  s.email       = 'rtulino@gmail.com'
  s.summary     = 'Config Reader'
  s.description = 'Process yaml files with embedded ruby'
  s.files       = `git ls-files lib`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/config-reader'
  s.licenses     = ['MIT']
  s.require_paths = ['lib']
end
