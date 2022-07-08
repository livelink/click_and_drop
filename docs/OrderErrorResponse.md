# ClickAndDrop::OrderErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_order_number** | **Integer** |  | [optional] |
| **channel_order_reference** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::OrderErrorResponse.new(
  account_order_number: null,
  channel_order_reference: null,
  code: null,
  message: null
)
```

