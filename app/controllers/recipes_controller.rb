get '/recipes/new'
	erb :'recipes/new'

post '/recipes' do
  @recipe = Recipe.all
end