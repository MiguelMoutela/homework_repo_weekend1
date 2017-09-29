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
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)

  pet_shop[:pets].count()
  # count = 0
  # for pet in pet_shop[:pets]
  # count += 1
  # end
  # return count

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

    return nil

end


def remove_pet_by_name(pet_shop, name)

  pet_to_be_deleted = find_pet_by_name(pet_shop, name)

  pet_shop[:pets].delete(pet_to_be_deleted)

end

def add_pet_to_stock(pet_shop, new_pet)

  pet_shop[:pets].push(new_pet)

  return stock_count(pet_shop)

end

def customer_pet_count(customer)

  customer[:pets].count

end

def add_pet_to_customer(customer, pet)

  customer[:pets].push(pet).length

end

def customer_can_afford_pet(customer, pet_to_be_bought)

  if

    customer[:cash] >= pet_to_be_bought[:price]

    return true

  else

    return false

  end

end

def sell_pet_to_customer(pet_shop, pet, customer)

  return if pet == nil
  # if pet == nil ==> does not work because it is still running code with pet == nil
  # we need it to NOT run the code if pet == nil !!!
  add_pet_to_customer(customer, pet)


  increase_pets_sold(pet_shop, 1)


  add_or_remove_cash(pet_shop, pet[:price])



# else
#
#     puts "yay!"
#
#     add_pet_to_customer(customer, pet)
#
#
#     increase_pets_sold(pet_shop, 1)
#
#
#     add_or_remove_cash(pet_shop, pet[:price])



end
