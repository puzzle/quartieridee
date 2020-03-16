# Decidim Application Dockerfile
# This is an image to start an application based on Decidim (https://decidim.org)
# You can see the Installation process on https://docs.decidim.org/install/docker
#

# Starts with a clean ruby image from Debian
# As per ruby's Docker image recommendations we don't use alpine nor slim
# If you have space disk contrains you could use those although it's going to need adjustments
#
# Also we don't use -onbuild as they're deprecated
# https://github.com/docker-library/official-images/issues/2076
FROM ruby:2.7.1 as dev
LABEL maintainer="beltrame@puzzle.ch"

# Installs system dependencies
# One package each line and sorted alphabetically
# We clean up after as there's some apt caching that we don't need here
RUN apt-get update -qq \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      build-essential \
      graphviz \
      imagemagick \
      libicu-dev \
      libpq-dev \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log

# Installs yarn/nodejs as a dependency
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      nodejs \
      yarn \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log

# Sets workdir as /usr/src/app
# We try to follow the Filesystem Hierarchy Standard (FHS)
ENV APP_HOME /usr/src/app/
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

# Create an user for the application for security
RUN addgroup --gid 1000 decidim
RUN useradd -m -s /bin/bash -g 1000 -u 1000 decidim

RUN mkdir /db-init && chown 1000 /db-init

# Changes the active user on the container
USER decidim

# Update system gems
#RUN gem update --system

# Copy Gemfile and install bundle dependencies
COPY --chown=decidim:decidim Gemfile Gemfile.lock ${APP_HOME}
ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=20 \
  BUNDLE_RETRY=5 \
  PATH=${APP_HOME}/bin:${PATH}
RUN gem install bundler:2.2.8
RUN bundle install
