class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
  	create_table :recipes do |t|
	  	t.string :title, :null => false
	  	t.string :image_url
	  	t.string :source_url
	  	t.string :publisher

		t.timestamps
	end
  end
end
