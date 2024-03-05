lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hammer_cli_foreman_google/version'

Gem::Specification.new do |spec|
  spec.name          = 'hammer_cli_foreman_google'
  spec.version       = HammerCLIForemanGoogle.version.dup
  spec.authors     = ['The Foreman Team']
  spec.email       = ['dev@community.theforeman.org']
  spec.homepage      = 'https://github.com/theforeman/hammer-cli-foreman-google'
  spec.license       = 'GPL-3.0'

  spec.platform      = Gem::Platform::RUBY

  spec.summary       = 'Foreman Google plugin for Hammer CLI'

  spec.files         = Dir['{lib,config,locale}/**/*', 'LICENSE', 'README*']
  spec.require_paths = ['lib']

  spec.add_dependency 'hammer_cli_foreman', '~> 3.10'
  spec.required_ruby_version = '>= 2.7', '< 4'
end
