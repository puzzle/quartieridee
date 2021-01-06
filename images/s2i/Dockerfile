FROM centos/ruby-27-centos7

USER root

ADD ./root /

RUN bash -c "gem install bundler -v \"$(grep -A 1 'BUNDLED WITH' /opt/app-root/src/Gemfile.lock | tail -n 1)\""

RUN \
  set -x && \
  yum -y erase git* && \
  yum -y install https://repo.ius.io/ius-release-el7.rpm && \
  yum -y install \
  git-core \
  # for active storage gem
  ImageMagick poppler libpoppler libicu-devel && \
  # Call restore-artifacts sscript when assembling
  sed '/Installing application source/i $STI_SCRIPTS_PATH/restore-artifacts' \
    -i $STI_SCRIPTS_PATH/assemble && \
  # Call post-assemble script when assembling
  echo -e "\n\$STI_SCRIPTS_PATH/post-assemble" >> $STI_SCRIPTS_PATH/assemble

USER 1001

ENV RAILS_ENV=production
