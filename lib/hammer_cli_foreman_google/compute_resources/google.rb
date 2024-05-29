# frozen_string_literal: true

require 'hammer_cli_foreman/compute_resource/base'

module HammerCLIForemanGoogle
  module ComputeResources
    class Google < HammerCLIForeman::ComputeResources::Base
      def name
        'GCE'
      end

      def compute_attributes
        %w[machine_type network associate_external_ip]
      end

      def interfaces_attrs_name
        'network_interfaces_nics_attributes'
      end

      def volume_attributes
        [
          ['size_gb', _('Volume size in GB, integer value')],
        ]
      end

      def provider_specific_fields
        [
          Fields::Field.new(label: _('Key Path'), path: [:key_path]),
          Fields::Field.new(label: _('Zone'), path: [:zone]),
        ]
      end

      def provider_vm_specific_fields
        [
          Fields::Field.new(label: _('Machine Type'), path: [:machine_type]),
          Fields::Field.new(label: _('Status'), path: [:status]),
          Fields::Field.new(label: _('Description'), path: [:description]),
          Fields::Field.new(label: _('Zone'), path: [:zone]),
        ]
      end

      def mandatory_resource_options
        super + %i[key_path zone]
      end
    end
  end
end
