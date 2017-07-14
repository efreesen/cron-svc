# frozen_string_literal: true
require 'bundler/setup'

require './config/initializers/app'

include ActiveRecord::Tasks

desc 'console'
task console: :environment do
  require 'pry'
  pry
end

Dir['lib/tasks/**/*.rake'].each { |ext| load ext }
