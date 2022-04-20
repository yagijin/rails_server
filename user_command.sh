bundle install --deployment --without development,test --path vendor/bundle
bundle exec rails webpacker:install
bundle exec rails webpacker:compile
bundle exec rails assets:precompile
