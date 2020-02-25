# frozen_string_literal: true

source 'https://rubygems.org'

ruby RUBY_VERSION

gem 'decidim', '0.20.0'
# gem 'decidim-consultations', '0.20.0'
# gem 'decidim-initiatives', '0.20.0'

gem 'bootsnap', '~> 1.3'

gem 'dalli'
gem 'delayed_job_active_record'
gem 'faker', '~> 1.9'
gem 'prometheus_exporter'
gem 'pry-rails'
gem 'puma', '~> 3.12.2'
gem 'uglifier', '~> 4.1'

group :development, :test do
  gem 'byebug', '~> 11.0', platform: :mri
  gem 'pry-byebug'

  gem 'decidim-dev', '0.20.0'
end

group :development do
  gem 'letter_opener_web', '~> 1.3'
  gem 'listen', '~> 3.1'
  gem 'spring', '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '~> 3.5'
end

group :production do
  gem 'bleib'
end
