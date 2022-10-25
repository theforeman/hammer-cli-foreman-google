# frozen_string_literal: true

module HammerCLIForemanGoogle
  require 'hammer_cli_foreman/compute_resource/register_compute_resources'

  require 'hammer_cli_foreman_google/version'
  require 'hammer_cli_foreman_google/compute_resources/google'

  HammerCLIForeman.register_compute_resource(
    'gce',
    HammerCLIForemanGoogle::ComputeResources::Google.new
  )
end
