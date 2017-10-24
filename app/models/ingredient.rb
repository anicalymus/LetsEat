class Ingredient < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :recipe
end

