# frozen_string_literal: true

module Decidim
  module Geolocalizables
    # This helper include some methods for rendering proposals dynamic maps.
    module MapHelper
      include Decidim::ApplicationHelper
      # Serialize a collection of geocoded entities to be used by the dynamic map component
      #
      # geolocalizables - A collection of geocoded objects
      def geolocalizables_data_for_map(geolocalizables)
        geolocalizables.map do |g|
          presenter = present(g)
          body = presenter.try(:description) || presenter.try(:body)

          g.slice(:latitude, :longitude, :address)
            .merge(title: present(g).title,
              body: truncate(body, length: 100),
              icon: icon(g.class.name.demodulize.pluralize.underscore, width: 40, height: 70, remove_icon_class: true),
              link: Decidim::ResourceLocatorPresenter.new(g).path)
        end
      end
    end
  end
end
