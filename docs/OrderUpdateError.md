# ClickAndDrop::OrderUpdateError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifier** | **Integer** |  | [optional] |
| **order_reference** | **String** |  | [optional] |
| **status** | **String** | Current status of the order | [optional] |
| **code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::OrderUpdateError.new(
  order_identifier: null,
  order_reference: null,
  status: null,
  code: null,
  message: null
)
```

