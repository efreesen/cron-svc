# frozen_string_literal: true
require 'environments'

Bundler.setup :default, Environments.current
Bundler.require :default, Environments.current

root = Dir.pwd

files = [
  Dir["#{root}/config/initializers/*.rb"],
  Dir["#{root}/app/**/*.rb"],
  Dir["#{root}/lib/**/*.rb"]
].flatten

files.delete("#{root}/config/initializers/app.rb")

files_with_error = []

files.each { |file| require file rescue files_with_error.push(file) }
files_with_error.each { |file| require file }
