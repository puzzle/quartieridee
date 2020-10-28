# frozen_string_literal: true

module Quartieridee
  module Proposals
    module ProposalsController
      def default_order
        super.tap { |default| default == 'random' ? 'recent' : default }
      end
    end
  end
end
