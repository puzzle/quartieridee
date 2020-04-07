#!/bin/bash

set -e

bin/rails db:migrate RAILS_ENV=development

echo "Decidim::System::Admin.where(email: 'quartieridee@puzzle.ch').first_or_initialize.update!(password: 'quartieridee', password_confirmation: 'quartieridee')" | bundle exec rails console

exec "$@"
