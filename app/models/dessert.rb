# create files for your ruby classes in this directory
require 'pry'
class Dessert

    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def dessertingredient(ingredient)
        DessertIngredient.new(ingredient,self)
    end
    # binding.pry

    def ingredients
        self.all.select do |chosen_dessert|
         chosen_dessert.ingredient == self  
        end 
        #return an array of ingredients for given dessert 
    end

end