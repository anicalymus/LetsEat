get "/recipes" do
  @search = params[:ingredient]
  adapter = Food2forkAdapter.new
  @recipes = adapter.search_recipes(@search)

  erb :'recipes/index'
end