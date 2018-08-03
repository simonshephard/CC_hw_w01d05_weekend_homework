def pet_shop_name(shop)
  return shop[:name]
end


def total_cash(shop)
  return shop[:admin][:total_cash]
end


def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end


def pets_sold(shop)
  return shop[:admin][:pets_sold]
end


def increase_pets_sold(shop, amount)
  return shop[:admin][:pets_sold] += amount
end


def stock_count(shop)
  return shop[:pets].length
end


def pets_by_breed(shop, breed)
  pets_by_breed = []
  for pet in shop[:pets]
    pets_by_breed.push(pet) if pet[:breed] == breed
  end
  return pets_by_breed
end


def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end


def remove_pet_by_name(shop, name)
  pet = find_pet_by_name(shop, name)
  index = shop[:pets].index(pet)
  shop[:pets].delete_at(index)
end


def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
end


def customer_cash(customer)
  return customer[:cash]
end


def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end


def customer_pet_count(customer)
  return customer[:pets].length
end


def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end
