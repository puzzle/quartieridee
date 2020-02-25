# frozen_string_literal: true

# Be sure to restart your server when you modify this file.
require 'action_dispatch/middleware/session/dalli_store'

Rails.application.config.session_store(
  ActionDispatch::Session::CacheStore,
  memcache_server: ['127.0.0.1'],
  namespace:       'sessions',
  key:             '_session',
  :expire_after => 30.minutes
)

def dalli_reachable?
  Rails.cache.dalli.stats.values.any?
end

def memcache_configured?
  if Rails.env.production?
    ENV['RAILS_MEMCACHED_HOST'].present?
  elsif Rails.env.development?
    true
  else
    false
  end
end

# We expect memcache to work in production.
# Prevents an error with the rails console on OpenShift
if memcache_configured? &&
   !Rails.env.production? &&
   !dalli_reachable?
  raise 'As CSRF tokens are read from cache, we require a memcache instance to start'
end
