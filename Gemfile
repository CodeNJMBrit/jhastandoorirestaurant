source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.2'
gem "nokogiri", ">= 1.10.4" # use  '-- --use-system-libraries' without '' to speed up gem installation time
gem 'mysql2'
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem 'cancancan'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'javascript'
gem "bootstrap", ">= 4.3.1"
gem "bootstrap_form",
    git: "https://github.com/bootstrap-ruby/bootstrap_form.git",
    branch: "master"
gem 'best_in_place', '~> 3.0.1'
gem 'devise'
gem 'sidekiq'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
