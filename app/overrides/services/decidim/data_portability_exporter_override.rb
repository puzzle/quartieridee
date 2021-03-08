# frozen_string_literal: true

Decidim::DataPortabilityExporter.class_eval do
  # Waiting on @cbeltrame's fix to be put in a release
  # https://github.com/decidim/decidim/blob/1ff02647dc0bc7474dc947cfa288dd46ae956cbc/decidim-core/app/services/decidim/data_portability_exporter.rb#L4
  require 'zip'
end
