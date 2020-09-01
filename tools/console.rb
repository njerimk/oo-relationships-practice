require_relative '../config/environment.rb'
require_relative '../app/models/bakery.rb'
require_relative '../app/models/ingredients.rb'
require_relative '../app/models/dessert.rb'
require_relative'../app/models/dessertingredient.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end

#Bakery Class
artsy_tartsy = Bakery.new("Artsy Tartsy")
cake_walk = Bakery.new("Cake Walk")
pie_sky = Bakery.new("Pie in the Sky")

#Ingredient Class
apple= Ingredient.new("Apple",50)
flour = Ingredient.new("Flour",90)
sugar = Ingredient.new("Sugar",10)

#Dessert Class
apple_pie = Dessert.new("Apple Pie", pie_sky)
cookie = Dessert.new("Cookie",artsy_tartsy)
cake = Dessert.new("Cake",cake_walk)

#BakeryDessert Class
flour.ingredientdessert(apple_pie)
sugar.ingredientdessert(apple_pie)
puts "test"
pie_sky.ingredients
binding.pry




#ingredientdessert(dessert)
#binding.pry
0

