=begin
#The One Api Client

#This is a sample client for the the-one-api service. This client implements endpoints related to movie and quotes.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'reed_sdk/api_client'
require 'reed_sdk/api_error'
require 'reed_sdk/version'
require 'reed_sdk/configuration'

# Models
require 'reed_sdk/models/movie'
require 'reed_sdk/models/movie_all_of'
require 'reed_sdk/models/movies'
require 'reed_sdk/models/movies_all_of'
require 'reed_sdk/models/paged'
require 'reed_sdk/models/quote'
require 'reed_sdk/models/quote_all_of'
require 'reed_sdk/models/quotes'
require 'reed_sdk/models/quotes_all_of'

# APIs
require 'reed_sdk/api/the_one_api_api'

module ReedSdk
  class << self
    # Customize default settings for the SDK using block.
    #   ReedSdk.configure do |config|
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
