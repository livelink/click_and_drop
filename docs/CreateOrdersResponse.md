# ClickAndDrop::CreateOrdersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_count** | **Integer** |  | [optional] |
| **errors_count** | **Integer** |  | [optional] |
| **created_orders** | [**Array&lt;CreateOrderResponse&gt;**](CreateOrderResponse.md) |  | [optional] |
| **failed_orders** | [**Array&lt;FailedOrderResponse&gt;**](FailedOrderResponse.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::CreateOrdersResponse.new(
  success_count: null,
  errors_count: null,
  created_orders: null,
  failed_orders: null
)
```

