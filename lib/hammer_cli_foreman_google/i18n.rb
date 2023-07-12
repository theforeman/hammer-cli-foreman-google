require 'hammer_cli/i18n'

module HammerCLIForemanGoogle
  module I18n

    class LocaleDomain < HammerCLI::I18n::LocaleDomain

      def translated_files
        Dir.glob(File.join(__dir__, '../**/*.rb'))
      end

      def locale_dir
        File.join(__dir__, '../../locale')
      end

      def domain_name
        'hammer_cli_foreman_google'
      end
    end

    class SystemLocaleDomain < LocaleDomain

      def locale_dir
        '/usr/share/locale'
      end

    end

  end
end

domain = [HammerCLIForemanGoogle::I18n::LocaleDomain.new, HammerCLIForemanGoogle::I18n::SystemLocaleDomain.new].find { |d| d.available? }
HammerCLI::I18n.add_domain(domain) if domain
