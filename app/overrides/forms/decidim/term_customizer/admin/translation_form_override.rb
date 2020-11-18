Decidim::TermCustomizer::Admin::TranslationForm.class_eval do
  validators_on(:key).each do |v|
    next unless v.class.name =~ /FormatValidator$/
    opts = v.options.dup
    opts[:with] = /\A([a-z0-9_\/\-\?]+\.)*[a-z0-9_\/\-\?]+\z/
    v.instance_variable_set(:@options, opts.freeze)
  end
end
