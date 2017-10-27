require 'httparty'

class Food2forkAdapter 
	include HTTParty
	base_uri 'food2fork.com/api'

  def initialize
	@options = { query: {key: ENV['FOOD2FORK_API_TOKEN'], q: 'recipes'} }
  end

  def search_recipes(search)
  	@options[:q] = search
  	self.class.get('/search', @options)
  end
end


# http://food2fork.com/api/search?key={API_KEY}&q=shredded%20chicken