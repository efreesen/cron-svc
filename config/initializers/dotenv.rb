require 'dotenv'

root = Dir.pwd
Dotenv.load("#{root}/.env.local", "#{root}/.env.#{Environments.current}", "#{root}/.env")
