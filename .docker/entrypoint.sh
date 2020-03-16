#!/bin/bash

set -e

bin/rails db:migrate RAILS_ENV=development

echo "Decidim::System::Admin.new(email: 'quartieridee@puzzle.ch', password: 'quartieridee', password_confirmation: 'quartieridee').save!" | bundle exec rails console

exec "$@"
