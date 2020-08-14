# frozen_string_literal: true
require 'active_support/concern'

module Quartieridee
  module Proposals
    module ProposalMCell
      extend ActiveSupport::Concern

      included do
        def has_image?
          return model.component.settings.allow_card_image
        end

        def has_own_image?
          model.attachments.first.present? && model.attachments.first.file.content_type.start_with?("image") && model.component.settings.allow_card_image
        end

        def resource_image_path
          return model.attachments.first.url if has_own_image?
          model.component.participatory_space.hero_image.url
        end
      end
    end
  end
end
