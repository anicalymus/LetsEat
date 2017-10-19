class Ingredient < ApplicationRecord
  # Remember to create a migration!
  belongs_to :recipe
end

