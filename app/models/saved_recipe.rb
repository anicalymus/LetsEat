class SavedRecipe < ApplicationRecord
  # Remember to create a migration!
  belongs_to :user
  belongs_to :recipe
end
