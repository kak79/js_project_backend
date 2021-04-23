class Ingredient < ApplicationRecord
  # :dependent => :destroy allows us to delete and recipe and all of the ingredients in it
  belongs_to :recipe, :dependent => :destroy
end
