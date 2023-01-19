# frozen_string_literal: true

require 'energypriceapi/version'

Gem::Specification.new do |s|
  s.name = 'energypriceapi'
  s.version = EnergypriceAPI::VERSION
  s.authors = ['EnergypriceAPI']
  s.email = 'contact@energypriceapi.com'
  s.files = Dir['{bin,lib}/**/*'] + ['README.md', 'LICENSE.md']
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/energypriceapi/energypriceapi-ruby'
  s.licenses = ['MIT']
  s.summary = 'Official EnergypriceAPI Ruby client.'
  s.add_dependency 'faraday', '>= 1.0.0'
  s.add_dependency 'faraday_middleware'
end
