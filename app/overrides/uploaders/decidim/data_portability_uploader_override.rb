# frozen_string_literal: true

Decidim::DataPortabilityUploader.class_eval do
  # Override validation, same as OpenDataUploader
  def validate_inside_organization
    true
  end
end
