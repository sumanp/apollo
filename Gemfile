source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'devise', '~> 4.9', '>= 4.9.2'
gem 'devise-i18n', '~> 1.11'
gem 'devise-bootstrap5', '~> 0.1.3'
gem 'cancancan', '~> 3.5'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_bot_rails'
  gem 'capybara'
  gem 'database_cleaner'
end

group :development do
  gem "web-console"
end
