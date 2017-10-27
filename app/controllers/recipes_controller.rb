post "/recipes" do
	erb :"recipes/new"
end

get "/recipes" do
  @search = params[:ingredient] 
    redirect "/recipes"
 
  @recipe = Food2ForkAdapter.get_recipes(ingredient)
end