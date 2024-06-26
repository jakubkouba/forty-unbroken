source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "camaleon_cms", '~> 2.7.4'
gem 'draper', '~> 4.0.2'
gem 'haml'
gem 'tailwindcss-rails'

gem "rails", "~> 7.0.6"

gem 'ed25519', '>= 1.2', '< 2.0'
gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'

gem 'sass-rails', '~> 5.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"


# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'brakeman', '~> 6.0.1'
  gem 'bundler-audit', '~> 0.9.1'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'dotenv-rails'
  gem 'guard', '~> 2.18.0'
  gem 'guard-rake', '~> 1.0.0'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rubocop', '~> 1.56.0'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'capistrano', '~> 3.17', require: false
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
end

#################### Camaleon CMS include all gems for plugins and themes #################### 
require_relative './lib/plugin_routes' 
instance_eval(PluginRoutes.draw_gems)