source 'https://rubygems.org'

gem "omniauth-google-oauth2", "~> 0.2.1"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',  '~> 4.2.10'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use version of FFI that does not have known security vulnerabilities.
gem 'ffi', '>=1.9.24'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'puma'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise', '~> 4.3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record

  gem 'sqlite3'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'bootstrap'
gem 'jquery-rails'

group :production do
  #heroku doesn't like sqlite3 so use pg instead
  gem 'pg', '~> 0.18'
  gem 'rails_12factor'
end


group :test do 
  gem 'cucumber-rails',:require=>false 
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions
  gem 'database_cleaner' # to clear Cucumber's test database between runs 
  gem 'capybara' # lets Cucumber pretend to be a web browser
  gem 'launchy' # a useful debugging aid for user stories 
end 

gem 'omniauth', '~> 1.6.1'
gem 'omniauth-facebook', '~> 4.0.0'
gem 'omniauth-oauth2', '~> 1.3.1'
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.3'
#gem 'omniauth-oauth2', '~> 1.4.0'

gem 'jquery-turbolinks'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'will_paginate', '~> 3.1.0'

