def pet_shop_name(name)
  return name[:name]
end

def total_cash(total_cash)
  return total_cash[:admin][:total_cash]
end

def add_or_remove_cash(total_cash, cash)
  return total_cash[:admin][:total_cash] += cash
end

def pets_sold(total_sold)
  return total_sold[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, sold)
  return pets_sold[:admin][:pets_sold] += sold
end

def stock_count(pet_count)
  return pet_count[:pets].count
end

def pets_by_breed(breed_type, breed)
   return breed_type[:pets].keep_if{|breed_type| breed_type[:breed] == breed}
end

def find_pet_by_name(pet_type,name)
 return pet_type[:pets].detect{|pet_type| pet_type[:name]== name}
end

def remove_pet_by_name(pet_type, name)
  return pet_type[:pets].delete_if{|pet_type| pet_type[:name]== name}
end

def add_pet_to_stock(stock_count, new_pet)
  new_pet = @new_pet
  return stock_count[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  new_pet = @new_pet
  customer[:pets].push(new_pet)
  return customer[:pets].count
end
