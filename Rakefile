require 'rake/testtask'
require 'bundler/gem_tasks'

require "hammer_cli_foreman_google/version"
require "hammer_cli_foreman_google/i18n"
require "hammer_cli/i18n/find_task"

HammerCLI::I18n::FindTask.define(HammerCLIForemanGoogle::I18n::LocaleDomain.new, HammerCLIForemanGoogle.version)

Bundler::GemHelper.install_tasks

namespace :pkg do
  desc 'Generate package source gem'
  task generate_source: :build
end

begin
  require 'rubocop/rake_task'
rescue LoadError
  # RuboCop is optional
else
  RuboCop::RakeTask.new
  task default: [:rubocop]
end
