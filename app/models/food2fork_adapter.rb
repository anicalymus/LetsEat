require 'httparty'

class Food2forkAdapter 
	include HTTParty

	base_uri 'food2fork.com/api'

  def initialize
	@options = { query: {key: ENV['FOOD2FORK_API_TOKEN']} }
  end

  def search_recipes(search)
  	@options[:query][:q] = search
  	JSON.parse(self.class.get('/search', @options))
  end

  def parse_recipes(recipe_data)
  	results = []
  	recipe_data['recipes'].each do |recipe|
  	p recipe 
  	results << Recipe.create(image_url: recipe['url'], title: recipe['title'], publisher: recipe['publisher'], source_url: recipe['source_url'])
  	end
  	results
  end
end


# http://food2fork.com/api/search?key={API_KEY}&q=shredded%20chicken