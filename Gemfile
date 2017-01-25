source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.3'
gem 'rails', '~> 5.0.1'
gem 'config'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'rails_real_favicon'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'devise'
gem 'foundation-rails'#, '~> 5.5'
gem 'foundation_rails_helper', '>= 3.0.0.rc2', '< 4.0'
gem 'modernizr-mixin'
gem 'modernizr-rails'
gem 'mysql2', '~> 0.3.18'
gem 'therubyracer', :platform=>:ruby
group :development do
  gem 'better_errors'
  gem 'rails_layout'
end
group :development, :test do
  gem 'rubocop'
end
