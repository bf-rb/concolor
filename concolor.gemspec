# frozen_string_literal: true

require_relative 'lib/concolor/version'

Gem::Specification.new do |spec|
  spec.name = 'concolor'
  spec.version = Concolor::Version::CURRENT
  spec.authors = ['Alex Merkulov']
  spec.email = ['rormercury@gmail.com']

  spec.summary = 'Console colorize text'
  spec.description = 'Colorize console text'

  spec.homepage = 'https://github.com/bf-rb/concolor'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'changelog_uri' => 'https://github.com/bf-rb/concolor/blob/main/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/bf-rb/concolor',
    'documentation_uri' => "https://bf-rb.github.io/concolor/v#{Concolor::Version::CURRENT}",
    'bug_tracker_uri' => 'https://github.com/bf-rb/concolor/issues',
    'rubygems_mfa_required' => 'true'
  }

  spec.files = %w[README.md Rakefile LICENSE.txt]
  spec.files += Dir['lib/**/*.rb']
  spec.require_paths = ['lib']
end
