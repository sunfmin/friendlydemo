class ProductVariation
  include Friendly::Document
    
  attribute :color_code, String
  attribute :color_name,  String
  
  indexes :color_code
  caches_by :id
end
