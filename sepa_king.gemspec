# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sepa_king/version'

Gem::Specification.new do |s|
  s.name          = 'sepa_king'
  s.version       = SEPA::VERSION
  s.authors       = ['Georg Leciejewski', 'Georg Ledermann']
  s.email         = ['gl@salesking.eu', 'mail@georg-ledermann.de']
  s.description   = 'Implemention of pain.001.002.03 and pain.008.002.02 (ISO 20022)'
  s.summary       = 'Generate SEPA XML files with Ruby ... the easy way'
  s.homepage      = 'http://github.com/salesking/sepa_king'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_runtime_dependency 'i18n'
  s.add_runtime_dependency 'builder'
  s.add_runtime_dependency 'iban-tools'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'libxml-ruby'
end
