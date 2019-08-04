require ('pry')

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  return pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets.push(pet)
    end
  end
  return pets
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets.push(pet)
    end
  end
  return pets
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(array)
  return array[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# optional

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  end
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  end
  return false
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  end
  return false
end

# error expected:1 actual:2. tried using pry - need advice

def sell_pet_to_customer(pet_shop, pet_to_sell, customer)
  for pet_for_sale in pet_shop[:pets]
    if pet_for_sale[:name] == pet_to_sell
      customer[:pets].push(pet_to_sell)
      pet_shop[:admin][:pets_sold] += 1
      customer[:cash] -= pet_to_sell[:price]
      pet_shop[:admin][:total_cash] += pet_to_sell[:price]
    end
  end
end
