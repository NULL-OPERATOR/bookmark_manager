require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/tag'
require_relative 'models/bookmark'

setup_else = "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}"
DataMapper.setup(:default, ENV['DATABASE_URL'] || setup_else)
DataMapper.finalize
DataMapper.auto_upgrade!
