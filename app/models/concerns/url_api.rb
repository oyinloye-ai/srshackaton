require 'httparty'

class UrlApi
	API_URL ='http://api.football-data.org/v1/competitions/?season=2015'

	def seasons
	 response = HTTParty.get(API_URL)
	 json = JSON.parse(response.body)
	end

end
