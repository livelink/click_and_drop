# ClickAndDrop::DeleteOrdersResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_orders** | [**Array&lt;DeletedOrderInfo&gt;**](DeletedOrderInfo.md) |  | [optional] |
| **errors** | [**Array&lt;OrderErrorInfo&gt;**](OrderErrorInfo.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::DeleteOrdersResource.new(
  deleted_orders: null,
  errors: null
)
```

