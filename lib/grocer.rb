def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
     return items if items[:item] == name
    end
  nil
end

def consolidate_cart(cart)
  kart = []
  cart.each do |g_item|
    c_item = find_item_by_name_in_collection(g_item[:item], kart)
    if c_item
      kart.each do |k_item|
      if k_item[:item] == c_item[:item] 
        k_item[:count] += 1
        end
        end 
      else
        g_item[:count] = 1 
        kart << g_item
   end
  end 
 kart
end


  