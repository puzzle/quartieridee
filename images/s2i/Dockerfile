FROM centos/ruby-27-centos7

ENV PATH=/opt/rh/rh-ruby27/root/usr/bin:$PATH

USER root

ADD ./root /

RUN \
  set -x && \
  # prepare installing yum and node.js
  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
  curl --silent --location https://rpm.nodesource.com/setup_12.x | bash - && \
  yum install -y http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm && \
  yum install -y \
  # for active storage gem
  ImageMagick poppler libpoppler libicu-devel yarn git && \
  # Call restore-artifacts sscript when assembling
  sed '/Installing application source/i $STI_SCRIPTS_PATH/restore-artifacts' \
    -i $STI_SCRIPTS_PATH/assemble && \
  # Call post-assemble script when assembling
  echo -e "\n\$STI_SCRIPTS_PATH/post-assemble" >> $STI_SCRIPTS_PATH/assemble

RUN bash -c "gem install bundler:2.2.8" --no-document

USER 1001

ENV RAILS_ENV=production
