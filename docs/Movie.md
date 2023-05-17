# ReedSdk::Movie

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **pages** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **runtime_in_minutes** | **Integer** |  | [optional] |
| **box_office_revenue_in_millions** | **Integer** |  | [optional] |
| **academy_award_nominations** | **Integer** |  | [optional] |
| **academy_award_wins** | **Integer** |  | [optional] |
| **rotten_tomatoes_score** | **Float** |  | [optional] |

## Example

```ruby
require 'reed_sdk'

instance = ReedSdk::Movie.new(
  total: null,
  limit: null,
  offset: null,
  page: null,
  pages: null,
  id: null,
  name: null,
  runtime_in_minutes: 120,
  box_office_revenue_in_millions: null,
  academy_award_nominations: null,
  academy_award_wins: null,
  rotten_tomatoes_score: null
)
```

