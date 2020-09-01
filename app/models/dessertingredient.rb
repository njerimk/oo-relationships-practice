class DessertIngredient

    @@all = []
    attr_accessor :ingredient, :dessert

    def initialize(ingredient, dessert)
        @ingredient = ingredient
        @dessert = dessert
        @@all << self
    end 

    def self.all
        @@all 
    end

end