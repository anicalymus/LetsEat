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
  	p recipe_data['recipes'][0]['image_url']
  	# debugger
  end
end


# http://food2fork.com/api/search?key={API_KEY}&q=shredded%20chicken