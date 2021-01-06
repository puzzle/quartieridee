# frozen_string_literal: true

source 'https://rubygems.org'

DECIDIM_VERSION = '~> 0.22'

ruby RUBY_VERSION

gem 'decidim', DECIDIM_VERSION
gem 'decidim-proposals', DECIDIM_VERSION
# gem 'decidim-consultations', DECIDIM_VERSION
# gem 'decidim-initiatives', DECIDIM_VERSION
gem 'decidim-term_customizer', git: 'https://github.com/mainio/decidim-module-term_customizer', branch: 'master'
gem 'decidim-url_aliases', git: 'https://github.com/OpenSourcePolitics/decidim-urlaliases'

gem 'bootsnap', '~> 1.3'

gem 'dalli'
gem 'delayed_job_active_record'
gem 'faker', '~> 1.9'
gem 'prometheus_exporter'
gem 'pry-rails'
gem 'puma', '~> 4.3'
gem 'uglifier', '~> 4.1'
gem 'byebug', '~> 11.0', platform: :mri
gem 'pry-byebug'

group :development, :test do

  gem 'decidim-dev', DECIDIM_VERSION
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
