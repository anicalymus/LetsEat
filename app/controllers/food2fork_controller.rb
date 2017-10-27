get 'recipes/:search_term' do 
	@food2fork_adapter = Food2forkAdapter.new
	p @food2fork_adapter.search_recipes('/search')
	# @food2fork_adapter.search_recipes(params[:search_recipes])
end