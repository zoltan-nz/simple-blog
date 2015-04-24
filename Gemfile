source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.1'

# database
gem 'pg'

# css
gem 'sass-rails', '~> 5.0'

# javascript
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'

# json
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Added packages

gem 'puma'
gem 'active_model_serializers'
gem 'devise'

# Bootstrap stylesheet
gem 'bootstrap-sass'

# Haml for templates
gem 'haml'
gem 'haml-rails'

group :development do
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end