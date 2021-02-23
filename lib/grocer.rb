def find_item_by_name_in_collection(name, collection)
  return_stuff = nil
  collection.each do |item_properties|
    if item_properties[:item] == name
      return_stuff = item_properties
    end
  end
  return_stuff
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_thing = []
  thing_hash = {}
  cart.each do |item_properties|
    if thing_hash.keys.include?(item_properties[:item])
      thing_hash[item_properties[:item]][:count] = thing_hash[item_properties[:item]][:count] + 1
    else
      thing_hash[item_properties[:item]] = item_properties
      thing_hash[item_properties[:item]][:count] = 1
    end
  end
  new_thing = thing_hash.values
end