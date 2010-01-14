class Product
  include Friendly::Document
    
  attribute :code, String
  attribute :name,  String

  indexes :code, :name
  caches_by :id
end

