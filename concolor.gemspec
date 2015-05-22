# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'concolor/version'

Gem::Specification.new do |spec|
  spec.name          = 'concolor'
  spec.version       = Concolor::VERSION
  spec.authors       = ['alexmercury']
  spec.email         = ['rubybeastua@gmail.com']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/rubybeast/concolor'
  spec.license       = 'MIT'

  spec.files         = %w(README.md Rakefile LICENSE.txt)
  spec.files         += Dir['lib/**/*.rb']

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
