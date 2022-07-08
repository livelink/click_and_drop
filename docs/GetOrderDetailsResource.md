# ClickAndDrop::GetOrderDetailsResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifier** | **Integer** |  | [optional] |
| **order_status** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **printed_on** | **Time** |  | [optional] |
| **shipped_on** | **Time** |  | [optional] |
| **postage_applied_on** | **Time** |  | [optional] |
| **manifested_on** | **Time** |  | [optional] |
| **order_date** | **Time** |  | [optional] |
| **despatched_by_other_courier_on** | **Time** |  | [optional] |
| **trading_name** | **String** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **marketplace_type_name** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **air_number** | **String** |  | [optional] |
| **requires_export_license** | **Boolean** |  | [optional] |
| **commercial_invoice_number** | **String** |  | [optional] |
| **commercial_invoice_date** | **Time** |  | [optional] |
| **order_reference** | **String** |  | [optional] |
| **channel_shipping_method** | **String** |  | [optional] |
| **special_instructions** | **String** |  | [optional] |
| **picker_special_instructions** | **String** |  | [optional] |
| **subtotal** | **Float** |  |  |
| **shipping_cost_charged** | **Float** |  |  |
| **order_discount** | **Float** |  |  |
| **total** | **Float** |  |  |
| **weight_in_grams** | **Integer** |  |  |
| **package_size** | **String** |  | [optional] |
| **account_batch_number** | **String** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **shipping_details** | [**GetShippingDetailsResult**](GetShippingDetailsResult.md) |  |  |
| **shipping_info** | [**GetPostalDetailsResult**](GetPostalDetailsResult.md) |  |  |
| **billing_info** | [**GetPostalDetailsResult**](GetPostalDetailsResult.md) |  |  |
| **order_lines** | [**Array&lt;GetOrderLineResult&gt;**](GetOrderLineResult.md) |  |  |
| **tags** | [**Array&lt;GetTagDetailsResult&gt;**](GetTagDetailsResult.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::GetOrderDetailsResource.new(
  order_identifier: null,
  order_status: null,
  created_on: null,
  printed_on: null,
  shipped_on: null,
  postage_applied_on: null,
  manifested_on: null,
  order_date: null,
  despatched_by_other_courier_on: null,
  trading_name: null,
  channel: null,
  marketplace_type_name: null,
  department: null,
  air_number: null,
  requires_export_license: null,
  commercial_invoice_number: null,
  commercial_invoice_date: null,
  order_reference: null,
  channel_shipping_method: null,
  special_instructions: null,
  picker_special_instructions: null,
  subtotal: null,
  shipping_cost_charged: null,
  order_discount: null,
  total: null,
  weight_in_grams: null,
  package_size: null,
  account_batch_number: null,
  currency_code: null,
  shipping_details: null,
  shipping_info: null,
  billing_info: null,
  order_lines: null,
  tags: null
)
```

