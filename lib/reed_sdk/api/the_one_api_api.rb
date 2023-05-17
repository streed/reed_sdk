=begin
#The One Api Client

#This is a sample client for the the-one-api service. This client implements endpoints related to movie and quotes.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module ReedSdk
  class TheOneApiApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a movie by a specific ID
    # Retrieves a specific movie by ID or returns an empty response.
    # @param id [String] Movie ID
    # @param [Hash] opts the optional parameters
    # @return [Movie]
    def retrieve_movie(id, opts = {})
      data, _status_code, _headers = retrieve_movie_with_http_info(id, opts)
      data
    end

    # Retrieve a movie by a specific ID
    # Retrieves a specific movie by ID or returns an empty response.
    # @param id [String] Movie ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Movie, Integer, Hash)>] Movie data, response status code and response headers
    def retrieve_movie_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TheOneApiApi.retrieve_movie ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TheOneApiApi.retrieve_movie"
      end
      # resource path
      local_var_path = '/movie/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Movie'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TheOneApiApi.retrieve_movie",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TheOneApiApi#retrieve_movie\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a specific movies quotes.
    # Retrieve a sepcific movie's quotes or return an empty response.
    # @param id [String] Movie ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Quotes]
    def retrieve_movie_quotes(id, opts = {})
      data, _status_code, _headers = retrieve_movie_quotes_with_http_info(id, opts)
      data
    end

    # Retrieve a specific movies quotes.
    # Retrieve a sepcific movie&#39;s quotes or return an empty response.
    # @param id [String] Movie ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Array<(Quotes, Integer, Hash)>] Quotes data, response status code and response headers
    def retrieve_movie_quotes_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TheOneApiApi.retrieve_movie_quotes ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TheOneApiApi.retrieve_movie_quotes"
      end
      # resource path
      local_var_path = '/movie/{id}/quote'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Quotes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TheOneApiApi.retrieve_movie_quotes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TheOneApiApi#retrieve_movie_quotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all movies
    # Retrieves all movies in the database.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Movies]
    def retrieve_movies(opts = {})
      data, _status_code, _headers = retrieve_movies_with_http_info(opts)
      data
    end

    # Retrieve all movies
    # Retrieves all movies in the database.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Array<(Movies, Integer, Hash)>] Movies data, response status code and response headers
    def retrieve_movies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TheOneApiApi.retrieve_movies ...'
      end
      # resource path
      local_var_path = '/movie'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Movies'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TheOneApiApi.retrieve_movies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TheOneApiApi#retrieve_movies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a specific movie quote
    # Retrieves a specific quote by ID or returns an empty response.
    # @param id [String] Quote ID
    # @param [Hash] opts the optional parameters
    # @return [Quote]
    def retrieve_quote(id, opts = {})
      data, _status_code, _headers = retrieve_quote_with_http_info(id, opts)
      data
    end

    # Retrieve a specific movie quote
    # Retrieves a specific quote by ID or returns an empty response.
    # @param id [String] Quote ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Quote, Integer, Hash)>] Quote data, response status code and response headers
    def retrieve_quote_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TheOneApiApi.retrieve_quote ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TheOneApiApi.retrieve_quote"
      end
      # resource path
      local_var_path = '/quote/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Quote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TheOneApiApi.retrieve_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TheOneApiApi#retrieve_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all movie quotes
    # Retrieves a list of all movie quotes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Quotes]
    def retrieve_quotes(opts = {})
      data, _status_code, _headers = retrieve_quotes_with_http_info(opts)
      data
    end

    # Retrieve all movie quotes
    # Retrieves a list of all movie quotes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :page 
    # @option opts [Integer] :offset 
    # @option opts [String] :sort 
    # @return [Array<(Quotes, Integer, Hash)>] Quotes data, response status code and response headers
    def retrieve_quotes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TheOneApiApi.retrieve_quotes ...'
      end
      # resource path
      local_var_path = '/quote'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Quotes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TheOneApiApi.retrieve_quotes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TheOneApiApi#retrieve_quotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
