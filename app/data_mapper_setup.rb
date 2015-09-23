require 'data_mapper'

if env = ENV['RACK_ENV'] == 'test'
  database = "postgres://localhost/bookmark_manager_test"
else
  database = "postgres://xlfxowtaqrqtqw:UhZZJT6JnX_KmMyfXiX8s5MAL5@ec2-54-243-149-147.compute-1.amazonaws.com:5432/d4ko46470jier7"
end

DataMapper.setup(:default, database)

require './app/models/link'
require './app/models/tag'


DataMapper.finalize

DataMapper.auto_upgrade!
