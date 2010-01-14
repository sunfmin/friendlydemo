require 'rubygems'
require 'friendly'
require 'logger'
require 'memcached'
Friendly.configure :adapter  => "mysql",
			       :host     => "localhost",
			       :user     => "root",
			       :database => "asics_friendly_development"
Friendly.db.loggers << Logger.new($stdout)




$cache    = Memcached.new('localhost:11211')
# $cache.set("eky", "hello")
# 
# puts $cache.get("eky")
Friendly.cache = Friendly::Memcached.new($cache)

require 'models/product'
require 'models/product_variation'
