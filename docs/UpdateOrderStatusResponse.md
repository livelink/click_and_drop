# ClickAndDrop::UpdateOrderStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated_orders** | [**Array&lt;UpdatedOrderInfo&gt;**](UpdatedOrderInfo.md) |  | [optional] |
| **errors** | [**Array&lt;OrderUpdateError&gt;**](OrderUpdateError.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::UpdateOrderStatusResponse.new(
  updated_orders: null,
  errors: null
)
```

