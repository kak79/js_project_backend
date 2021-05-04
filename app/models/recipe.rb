class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  
  
  def ingredients_attributes=(ingredients)
    ingredients.each do |i|
      self.ingredients << Ingredient.find_or_create_by(name: i.name)
    end

  end

end
