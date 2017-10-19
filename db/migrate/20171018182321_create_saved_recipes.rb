class CreateSavedRecipes < ActiveRecord::Migration[5.1]
  def change
  	create_table :saved_recipes do |t|
	  	t.integer :user_id, :null => false
	  	t.integer :recipe_id, :null => false

		t.timestamps
	end
  end
end
