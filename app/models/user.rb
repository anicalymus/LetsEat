require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  # Is linked to the recipes that the user has liked and saved.
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes

  validates :first_name, :last_name, :email, {:presence => true}
  
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
