`/usr/local/mysql/bin/mysql -u root -e 'drop database asics_friendly_development'`
`/usr/local/mysql/bin/mysql -u root -e 'create database asics_friendly_development'`
require 'boot'
Friendly.create_tables!
1.upto(1000).each do |code|
  Product.create :code => code.to_s, :name => "Nimbus #{code}" 
end
