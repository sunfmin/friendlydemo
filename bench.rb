require 'boot'

puts Product.all(:code => 1..1000).inspect

