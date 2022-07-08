# ClickAndDrop::CreateOrderErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **fields** | [**Array&lt;OrderFieldResponse&gt;**](OrderFieldResponse.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::CreateOrderErrorResponse.new(
  error_code: null,
  error_message: null,
  fields: null
)
```

