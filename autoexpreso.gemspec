# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autoexpreso/version'

Gem::Specification.new do |spec|
  spec.name          = 'autoexpreso'
  spec.version       = AutoExpreso::VERSION
  spec.authors       = ['Axel Rivera','Jonah Ruiz']
  spec.email         = ['axel@riveralabs.com','jonah@pixelhipsters.com']
  spec.description   = %q{Scrape autoexpreso.com for your account status}
  spec.summary       = %q{Scrape autoexpreso.com for your account status and last transactions.}
  spec.homepage      = 'https://www.github.com/jonahoffline/autoexpreso-cli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'awesome_print', '~> 1.2.0'
  spec.add_dependency 'highline', '~> 1.6.19'
  spec.add_dependency 'mechanize', '~> 2.7.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
