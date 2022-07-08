# ClickAndDrop::FailedOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**CreateOrderRequest**](CreateOrderRequest.md) |  | [optional] |
| **errors** | [**Array&lt;CreateOrderErrorResponse&gt;**](CreateOrderErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::FailedOrderResponse.new(
  order: null,
  errors: null
)
```

