puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktails...'

Cocktail.create(name: "Long Island Iced Tea")
Cocktail.create(name: "Havana Club")
Cocktail.create(name: "Rum Cola")

Ingredient.create(name: "Cola")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Sal")




puts 'Finished!'
