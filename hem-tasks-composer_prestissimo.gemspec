#!/usr/bin/env ruby
# ^ Syntax hint

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'hem/tasks/composer_prestissimo/version'

Gem::Specification.new do |spec|
  spec.name          = 'hem-tasks-composer_prestissimo'
  spec.version       = Hem::Tasks::ComposerPrestissimo::VERSION
  spec.authors       = ['Kieren Evans']
  spec.email         = ['kevans+hem_tasks@inviqa.com']

  spec.summary       = 'Composer task for Hem'
  spec.description   = 'Installs hirak/prestissimo into the Hem VM'
  spec.homepage      = ''
  spec.licenses = ['MIT']

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|\.rubocop\.yml|Rakefile)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.55.0'
end
