# app/services/car_review_service.rb

require 'httparty'

class CarReviewService
  include HTTParty
  base_uri 'https://app.datashake.com/api/V2/profiles/review?job_id=345372183'  # Base URI without placeholders

  def initialize(api_key)
    @options = { query: { api_key: api_key, fmt: 'json' } }
  end

  def fetch_reviews(review_id)
    # Implement logic to fetch reviews
    endpoint = "/#{review_id}"  # Endpoint path
    response = self.class.get(endpoint, @options)
    response.parsed_response['reviews']  # Adjust this based on your API response structure
  end
end

