require 'faker'

users = 5.times do 
		User.create(first_name: Faker::Name.first_name
					last_name: 	Faker::Name.last_name
					email: 		Faker::Internet.email
					password: 'password')
	end


ingredients = 5.times do
	Ingredient.create(name: Faker::Food.ingredient)


		Recipe.create(name: Faker::Food.recipe)
		Saved_Recipe.create(name: Faker::Food.saved_recipe)