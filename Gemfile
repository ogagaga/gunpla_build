source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'cancancan'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'enumerize'
gem 'faker'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'kaminari'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'rails_admin'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails-erd'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'view_source_map'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara-email'
  gem 'database_rewinder'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rspec-rails'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rubocop', require: false
end
