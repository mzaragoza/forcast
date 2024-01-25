source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


ruby "3.1.2"          # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.8"
gem "pg", "~> 1.1"    # Use postgresql as the database for Active Record
gem "puma", "~> 5.0"  # Use the Puma web server [https://github.com/puma/puma]

gem "importmap-rails" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "jbuilder"        # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "redis", "~> 4.0" # Use Redis adapter to run Action Cable in production
gem "sprockets-rails" # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "stimulus-rails"  # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "turbo-rails"     # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'haml'            # Haml is a templating engine for HTML.
gem 'awesome_print'   # makes the console nicer

gem "geocoder"        # Look up a map address and convert it to latitude, longitude, etc.


# gem "kredis"        # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]

# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]

gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb

# gem "sassc-rails"            # Use Sass to process CSS

# gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ] # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'dotenv' # Shim to load environment variables from .env into ENV in development.
  gem 'rspec-rails', '~> 6.1.0'
  gem 'webmock'
end

group :development do
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]

  # gem "rack-mini-profiler" # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "spring"            # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
