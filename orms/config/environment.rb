require 'bundler'
Bundler.require

DB = {
	conn: Mysql2::Client.new(
		:host => "localhost", 
		:username => "root",
		:password => "your_password",
		:database => "anime_api"
	)
}

require_relative '../lib/anime'
