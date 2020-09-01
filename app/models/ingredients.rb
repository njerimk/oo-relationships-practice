class Ingredient

    attr_accessor :name, :calories

    @@all = []

    def initialize(name,calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredientdessert(dessert)
        DessertIngredient.new(self, dessert)
    end



end