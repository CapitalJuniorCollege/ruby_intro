@products = ["Negan",
  "Glen Eating Pizza",
  "Glen eye out of his head",
  "Abraham",
  "Homero Jay Simpson",
  "Maggie Simpson",
  "Moe",
  "Angry Moe",
  "Jhon Snow",
  "Tyrion",
  "Eleven",
  "El Chavo",
  "Don Ramon",
  "Chompiraz"
]

# { {cost: 3123, color: "red"},{},{} }
@products_characteristics = {}
@products.each_with_index do | p , i |
@products_characteristics[p] = {
    cost: 10,
    color: "undefined",
    index_product: i
  }
end
@shopping_car = {}
@user_character = nil
while user_character != "exit"
  puts "Costume Store #########################"
  puts '#######################################'
  puts '#######################################'
  puts "Please, type the name of your character"
  user_character = gets.chomp.downcase
  break if user_character == "exit"
  # Search in the products the name of the character
  index = 0
  matched_index = []
  until index >= products.length
    if products[index].downcase.include? user_character
      puts "your costume is! cha chan!!! : # #{index}. #{products[index]}"
      matched_index << index
    end
    index += 1
  end

  if matched_index.any?
    user_character = -1
    until matched_index.include? user_character
      puts "please select your costume! "
      user_character = gets.chomp.to_i

      if matched_index.include? user_character
        puts "you choose : #{products[user_character]}"
        puts "do you want to buy it. It cost #{products_characteristics[products[user_character]][:cost]} lukas perro ?? (yes/no)"
        if gets.chomp.downcase == "yes"
          shopping_car[products[user_character]] = "purchased"
        end
      else
        puts "That costume does not exist !!"
      end
    end
  else
    puts "We did not find you costume, Sooorryyy! :("
  end

  puts "Your Shopping car: " if shopping_car.any?
  puts shopping_car if shopping_car.any?

end
































































# end code
