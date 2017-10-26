post "/recipes" do
	erb :"recipes/new"
end

get "/recipes" do
  if @ingredient = params[:ingredient]
    redirect "/recipes"
  else
    @recipe = Food2ForkAdapter.get_recipes(ingredient)
  end
end