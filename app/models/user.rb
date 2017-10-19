require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  # Is linked to the recipes that the user has liked.
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes
  
  

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
