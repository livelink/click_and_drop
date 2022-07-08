# ClickAndDrop::CreateOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifier** | **Integer** |  |  |
| **order_reference** | **String** |  | [optional] |
| **created_on** | **Time** |  |  |
| **order_date** | **Time** |  | [optional] |
| **printed_on** | **Time** |  | [optional] |
| **manifested_on** | **Time** |  | [optional] |
| **shipped_on** | **Time** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **label** | **String** | label in format base64 string | [optional] |
| **label_errors** | [**Array&lt;CreateOrderLabelErrorResponse&gt;**](CreateOrderLabelErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::CreateOrderResponse.new(
  order_identifier: null,
  order_reference: null,
  created_on: null,
  order_date: null,
  printed_on: null,
  manifested_on: null,
  shipped_on: null,
  tracking_number: null,
  label: null,
  label_errors: null
)
```

