source 'https://rubygems.org'
gem 'rails', '3.2.3'

group :production, :staging do
  gem 'pg'
end

group :development do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem "shoulda"
end

gem 'httparty'
gem 'jquery-rails'
gem "thin", ">= 1.4.1"
gem "haml", ">= 3.1.7"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "hpricot", ">= 0.8.6", :group => :development
gem "ruby_parser", ">= 2.3.1", :group => :development
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "capybara", ">= 1.1.2", :group => :test
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "database_cleaner", ">= 0.8.0", :group => :test
gem "launchy", ">= 2.1.2", :group => :test
gem "factory_girl_rails", ">= 4.0.0", :group => [:development, :test]
gem "twitter-bootstrap-rails", ">= 2.1.3"
gem "therubyracer", ">= 0.10.2", :group => :assets, :platform => :ruby
gem "sendgrid", ">= 1.0.1"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.2"
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
