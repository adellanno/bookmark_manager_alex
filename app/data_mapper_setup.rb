require 'data_mapper'


env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://ufblrttxffajsi:RahFUPTkK8waLyrfubQcfNo0GQ@ec2-54-243-149-147.compute-1.amazonaws.com:5432/d1dfd0sdhloksh")

require './app/models/link'

DataMapper.finalize

DataMapper.auto_upgrade!
