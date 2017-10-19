class Recipe < ApplicationRecord
  # Remember to create a migration!
  # Linking recipes to users based on the user saving/liking the recipe
  # Recipes are linked based on the ingredients inside of them
  has_many :ingredients
  has_many :saved_recipes
  has_many :users, through: :saved_recipes
end
