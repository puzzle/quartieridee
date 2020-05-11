module ApplicationHelper

  def number_to_currency(number, options = {})
    defaults = {
        locale: :de,
        unit: Decidim.currency_unit,
        separator: ',',
        delimiter: '\'',
        format: '%u %n'
    }
    super number, defaults.merge(options)
  end

end
