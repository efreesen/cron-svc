source 'https://rubygems.org'

ruby '2.4.1'

gem 'rake', '~> 10.5'
gem 'pg'
gem 'activerecord'
gem 'clockwork'
gem 'environments'
gem 'event_bus'

group :production do
  gem 'puma', '~> 3.2'
end

group :development, :test do
  gem 'dotenv', '~> 2.1'
  gem 'yard', '~> 0.8'
  gem 'yard-tomdoc', '~> 0.7'
  gem 'pry-meta', '~> 0.0'
end

group :test do
  gem 'rspec', '~> 3.4'
end
