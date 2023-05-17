# ReedSdk::MovieAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = ReedSdk::MovieAllOf.new(
  id: null,
  name: null,
  runtime_in_minutes: 120,
  box_office_revenue_in_millions: null,
  academy_award_nominations: null,
  academy_award_wins: null,
  rotten_tomatoes_score: null
)
```

