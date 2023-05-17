=begin
#The One Api Client

#This is a sample client for the the-one-api service. This client implements endpoints related to movie and quotes.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/movie'
require 'openapi_client/models/movie_all_of'
require 'openapi_client/models/movies'
require 'openapi_client/models/movies_all_of'
require 'openapi_client/models/paged'
require 'openapi_client/models/quote'
require 'openapi_client/models/quote_all_of'
require 'openapi_client/models/quotes'
require 'openapi_client/models/quotes_all_of'

# APIs
require 'openapi_client/api/the_one_api_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end