# ClickAndDrop::OrderErrorInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifier** | **Integer** |  | [optional] |
| **order_reference** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::OrderErrorInfo.new(
  order_identifier: null,
  order_reference: null,
  code: null,
  message: null
)
```

