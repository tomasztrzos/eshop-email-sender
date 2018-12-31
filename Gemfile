source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
gem 'passenger', '~> 6.0', require: 'phusion_passenger/rack_handler'
gem 'google-cloud'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'sass-rails', '~> 5.0'
gem 'therubyracer', '~> 0.12.3'
gem 'execjs', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :staging do
  gem 'stackdriver'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry', '~> 0.12.2'
  gem 'pry-remote', '~> 0.1.8'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.1'
  gem 'fuubar', '~> 2.3', '>= 2.3.2'
  gem 'rubocop', '~> 0.61.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
