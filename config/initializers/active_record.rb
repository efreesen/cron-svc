require 'active_record'
require 'erb'

root = Dir.pwd
database_configuration = YAML.load(ERB.new(File.read(File.join(root, 'config/database.yml'))).result)

ActiveRecord::Base.establish_connection(database_configuration[Environments.current])
