$:.push File.expand_path('../lib', __FILE__)

require 'set_default/version'

Gem::Specification.new do |s|

  s.name = "set_default"
  s.version = SetDefault::VERSION
  s.default_executable = "set_default"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Alves"]
  s.date = '2014-04-16'
  s.description = 'Include default values in ActiveRecord classes'
  s.email = ['daniel@danielalves.mes']
  s.homepage = ''
  s.summary = ''

  s.files = Dir['{lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.require_paths = ["lib"]

  s.add_dependency 'activerecord', '~> 4.0.4'
  s.add_dependency 'activesupport', '~> 4.0.4'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'

end
