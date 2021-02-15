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
  updated_cart = []
  counter = 0
    while counter < cart.length
      new_cart_items = find_item_by_name_in_collection(cart[counter][:item], updated_cart)
        if new_cart_items != nil
          new_cart_items[:count] += 1
        else 
          new_cart_items = {
            :item=> cart[counter][:item],
            :price=> cart[counter][:price],
            :clearance=> cart[counter][:clearance],
            :count=> 1
          }
          updated_cart << new_cart_items
    end
    counter += 1
  end
  updated_cart
end