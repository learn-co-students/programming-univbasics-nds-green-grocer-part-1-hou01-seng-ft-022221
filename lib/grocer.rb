require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.map do |key, value|
    if key[:item] == name
      return key
    end
  end
  return nil
end

def consolidate_cart(cart)
  find_item_by_name_in_collection[:item]
  binding.pry
end


  