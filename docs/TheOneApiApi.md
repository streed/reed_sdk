# ReedSdk::TheOneApiApi

All URIs are relative to *https://the-one-api.dev/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**retrieve_movie**](TheOneApiApi.md#retrieve_movie) | **GET** /movie/{id} | Retrieve a movie by a specific ID |
| [**retrieve_movie_quotes**](TheOneApiApi.md#retrieve_movie_quotes) | **GET** /movie/{id}/quote | Retrieve a specific movies quotes. |
| [**retrieve_movies**](TheOneApiApi.md#retrieve_movies) | **GET** /movie | Retrieve all movies |
| [**retrieve_quote**](TheOneApiApi.md#retrieve_quote) | **GET** /quote/{id} | Retrieve a specific movie quote |
| [**retrieve_quotes**](TheOneApiApi.md#retrieve_quotes) | **GET** /quote | Retrieve all movie quotes |


## retrieve_movie

> <Movie> retrieve_movie(id)

Retrieve a movie by a specific ID

Retrieves a specific movie by ID or returns an empty response.

### Examples

```ruby
require 'time'
require 'reed_sdk'
# setup authorization
ReedSdk.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ReedSdk::TheOneApiApi.new
id = 'id_example' # String | Movie ID

begin
  # Retrieve a movie by a specific ID
  result = api_instance.retrieve_movie(id)
  p result
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movie: #{e}"
end
```

#### Using the retrieve_movie_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Movie>, Integer, Hash)> retrieve_movie_with_http_info(id)

```ruby
begin
  # Retrieve a movie by a specific ID
  data, status_code, headers = api_instance.retrieve_movie_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Movie>
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movie_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Movie ID |  |

### Return type

[**Movie**](Movie.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_movie_quotes

> <Quotes> retrieve_movie_quotes(id, opts)

Retrieve a specific movies quotes.

Retrieve a sepcific movie's quotes or return an empty response.

### Examples

```ruby
require 'time'
require 'reed_sdk'
# setup authorization
ReedSdk.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ReedSdk::TheOneApiApi.new
id = 'id_example' # String | Movie ID
opts = {
  limit: 56, # Integer | 
  page: 56, # Integer | 
  offset: 56, # Integer | 
  sort: 'sort_example' # String | 
}

begin
  # Retrieve a specific movies quotes.
  result = api_instance.retrieve_movie_quotes(id, opts)
  p result
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movie_quotes: #{e}"
end
```

#### Using the retrieve_movie_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Quotes>, Integer, Hash)> retrieve_movie_quotes_with_http_info(id, opts)

```ruby
begin
  # Retrieve a specific movies quotes.
  data, status_code, headers = api_instance.retrieve_movie_quotes_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Quotes>
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movie_quotes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Movie ID |  |
| **limit** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **sort** | **String** |  | [optional] |

### Return type

[**Quotes**](Quotes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_movies

> <Movies> retrieve_movies(opts)

Retrieve all movies

Retrieves all movies in the database.

### Examples

```ruby
require 'time'
require 'reed_sdk'
# setup authorization
ReedSdk.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ReedSdk::TheOneApiApi.new
opts = {
  limit: 56, # Integer | 
  page: 56, # Integer | 
  offset: 56, # Integer | 
  sort: 'sort_example' # String | 
}

begin
  # Retrieve all movies
  result = api_instance.retrieve_movies(opts)
  p result
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movies: #{e}"
end
```

#### Using the retrieve_movies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Movies>, Integer, Hash)> retrieve_movies_with_http_info(opts)

```ruby
begin
  # Retrieve all movies
  data, status_code, headers = api_instance.retrieve_movies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Movies>
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_movies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **sort** | **String** |  | [optional] |

### Return type

[**Movies**](Movies.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_quote

> <Quote> retrieve_quote(id)

Retrieve a specific movie quote

Retrieves a specific quote by ID or returns an empty response.

### Examples

```ruby
require 'time'
require 'reed_sdk'
# setup authorization
ReedSdk.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ReedSdk::TheOneApiApi.new
id = 'id_example' # String | Quote ID

begin
  # Retrieve a specific movie quote
  result = api_instance.retrieve_quote(id)
  p result
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_quote: #{e}"
end
```

#### Using the retrieve_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Quote>, Integer, Hash)> retrieve_quote_with_http_info(id)

```ruby
begin
  # Retrieve a specific movie quote
  data, status_code, headers = api_instance.retrieve_quote_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Quote>
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Quote ID |  |

### Return type

[**Quote**](Quote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_quotes

> <Quotes> retrieve_quotes(opts)

Retrieve all movie quotes

Retrieves a list of all movie quotes

### Examples

```ruby
require 'time'
require 'reed_sdk'
# setup authorization
ReedSdk.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ReedSdk::TheOneApiApi.new
opts = {
  limit: 56, # Integer | 
  page: 56, # Integer | 
  offset: 56, # Integer | 
  sort: 'sort_example' # String | 
}

begin
  # Retrieve all movie quotes
  result = api_instance.retrieve_quotes(opts)
  p result
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_quotes: #{e}"
end
```

#### Using the retrieve_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Quotes>, Integer, Hash)> retrieve_quotes_with_http_info(opts)

```ruby
begin
  # Retrieve all movie quotes
  data, status_code, headers = api_instance.retrieve_quotes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Quotes>
rescue ReedSdk::ApiError => e
  puts "Error when calling TheOneApiApi->retrieve_quotes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **sort** | **String** |  | [optional] |

### Return type

[**Quotes**](Quotes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

