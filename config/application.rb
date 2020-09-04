# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quartieridee
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Precompile fonts
    config.assets.paths << Rails.root.join("app","assets","fonts")

    # Configure an application wide address suffix to pass to the geocoder.
    # This is to make sure that the addresses are not incorrectly mapped outside
    # of the wanted area.
    config.address_suffix = "District Zurich, Zurich, Switzerland"

    # Re-configure the geocoding service to move away from here.com towards the
    # free nominatim service. This needs to be done after the decidim gem
    # initializers.
    config.after_initialize do
      Geocoder.configure(Geocoder.config.merge(lookup: :nominatim, :units => :km))
    end

    config.to_prepare do
      Rails.root.glob('app/overrides/**/*_override.rb').each do |override|
        require_dependency override
      end
    end
  end
end
