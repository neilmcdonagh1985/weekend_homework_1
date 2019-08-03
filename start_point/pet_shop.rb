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

# def pets_by_breed(pet_shop, breed)
#   for pet in pet_shop[:pets]
#     if pet[:breed] != breed
#       pet_shop[:pets].delete(pet)
#     end
#   end
# end

# def pets_by_breed(pet_shop, breed)
#   for pet in pet_shop[:pets]
#     if pet[:breed] != breed
#       pet_shop[:pets].slice
#     end
#   end
# end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] != name
      return nil
    end
  end
end
