# Write your code here
# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @URL = url 
    end 

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        json = JSON.parse(self.get_response_body) 
        json.collect do |hash|
          hash
        end
    end
end 
