module ApplicationHelper
  require 'httparty'

  #Todo; Need to write a function that would generate the token
  def headers
      {
      'Authorization' => "Basic RU85NDY5MzE6amVQZW5zZTIhIQ=="
      }
  end

  @last_request

  #Get the match fixture from the Pinnacle API
  @api_url_fixtures = "https://api.pinnacle.com/v1/fixtures?sportid=29&Oddsformat=Decimal"
  @api_url_matchodds = "https://api.pinnacle.com/v1/odds?sportId=29&Oddsformat=Decimal"

  #send_request make a call to the API, fetch data based on the url and return a json of the body content of the http response
  def send_request_v2(api_url)
        response = HTTParty.get(api_url, headers: headers, verify: false)
        response.body
  end
  # Take the url of the sport fixture and return the fixture since last updated.
  def pinnacle_sports_fixture

      if @last_request.nil?
        url = "https://api.pinnacle.com/v1/fixtures?sportid=29&Oddsformat=Decimal"
      else
        url = "https://api.pinnacle.com/v1/fixtures?sportid=29&Oddsformat=Decimal" + "&since=" + (@last_request)
      end

      response = JSON.parse(send_request_v2(url))
      @last_request = response["last"]

      response
   end


   def pinnacle_sport_odds

      if @last_request.nil?
        url = "https://api.pinnacle.com/v1/odds?sportId=29&Oddsformat=Decimal"
      else
        url = "https://api.pinnacle.com/v1/odds?sportId=29&Oddsformat=Decimal" + "&since="  + (@last_request)
      end

      response = JSON.parse(send_request_v2(url))
      @last_request = response["last"]

      response
   end

end
