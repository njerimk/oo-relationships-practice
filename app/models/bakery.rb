require 'pry'

class Bakery
  
    @@all = []
    attr_accessor :name
    attr_reader :ingredients
  
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts(dessert)
        Dessert.new(self, dessert)
    end

    def ingredients #==> has many through
        DessertIngredient.all.select do |dessertingredient|
            dessertingredient.dessert.bakery == self
        end.map do |ingredients|
            ingredients.ingredient 
            #binding.pry
        end
        #binding.pry
        #should return an array of ingredient objects for the bakery's desserts 
    end

    def desserts
        Dessert.all.select do |dessert|
        #binding.pry
            dessert.bakery == self 
           #dessert #==> qualifier. .baker =>#instance method from the Dessert class called dessert == self 
        end
         #should return an array of dessert OBJECTS the bakery makes
    end

    def average_calories
        calorie_array_result = self.ingredients.map do |ingredient|
            ingredient.calories *= 1  
        end
        calorie_array_result.inject(0.0) do |sum, num| 
            sum + num / calorie_array_result.count
        end
        #inject => iterates over each element and then applies an accumulator value to it, which is then handed to the next element
        #binding.pry
    end
    #binding.pry
        #should return a float totaling the average number of calories for the desserts sold at this bakery
 

    def shopping_list
       self.ingredients.select do |ingred_calor|
        ingred_calor.name


       binding.pry 
    end

end


# - #average_calories
#   - should return a float totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery
