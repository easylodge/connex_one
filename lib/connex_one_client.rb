require "httparty"
require "active_record"

require 'connex_one_client/customers'

module ConnexOneClient
  class Api
    include Customers
    attr_accessor :api_key

    def initialize(api_key, base_url)
      @api_key = api_key
      @base_url = base_url
    end

    private

    def http
      @http ||= HTTParty
    end

    def headers
      @headers ||= { "Authorization": "Bearer #{@api_key}", 'Content-Type' => 'application/json'}
    end

    def get(endpoint)
      response = HTTParty.get(@base_url + endpoint, headers: headers)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Connex One" }
    end

    def patch(endpoint, body)
      response = HTTParty.patch(@base_url + endpoint, headers: headers, body: body)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Connex One" }
    end

    def post(endpoint, body)
      response = HTTParty.post(@base_url + endpoint, headers: headers, body: body)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to Connex One" }
    end

    def delete(endpoint)
      response = HTTParty.delete(@base_url + endpoint, headers: headers)
      response.parsed_response.deep_symbolize_keys
    rescue
      { errors: "Failed to connect to ConnexOne" }
    end

  end

end
