get '/recipes/search' do 
	@food2fork_adapter = Food2forkAdapter.new
	# @food2fork_adapter.search_recipes('/search')
	@recipe_data = @food2fork_adapter.search_recipes(params[:ingredient])
	@recipes = @food2fork_adapter.parse_recipes(@recipe_data)
end