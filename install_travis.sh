#!/bin/bash -e

export DEBIAN_FRONTEND=noninteractive

echo "================= Installing travis CLIs ================="

apt install ruby ruby-dev ruby-bundler

cd
git clone git://github.com/travis-ci/travis-build
cd travis-build
gem install travis
bundle install
bundler add travis
bundler binstubs travis
mkdir -p ~/.travis
ln -s `pwd` ~/.travis/build

#cd
#git clone https://github.com/travis-ci/travis-support.git
#cd travis-support
#gem build travis-support.gemspec
#gem install travis-support
#
#cd
#git clone https://github.com/travis-ci/travis-github_apps.git
#cd travis-github_apps/
#gem build travis-github_apps.gemspec
#gem install travis-github_apps
#
#cd
#git clone https://github.com/travis-ci/travis-rollout.git
#cd travis-rollout/
#gem build travis-rollout.gemspec
#gem install travis-rollout
#cd

echo "Installed travis CLIs successfully"
echo "-------------------------------------"

echo "================= Cleaning package lists ==================="
apt-get clean
apt-get autoclean
apt-get autoremove
