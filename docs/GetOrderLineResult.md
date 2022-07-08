# ClickAndDrop::GetOrderLineResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **quantity** | **Integer** |  |  |
| **unit_value** | **Float** |  | [optional] |
| **line_total** | **Float** |  | [optional] |
| **customs_code** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::GetOrderLineResult.new(
  sku: null,
  name: null,
  quantity: null,
  unit_value: null,
  line_total: null,
  customs_code: null
)
```

