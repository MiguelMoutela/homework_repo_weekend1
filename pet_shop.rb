def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  sold = 2
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)

  # pet_shop[:pets].count()
  count = 0
  for pet in pet_shop[:pets]
  count += 1
  end
  return count

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
