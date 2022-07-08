# ClickAndDrop::CreateOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | **String** |  | [optional] |
| **recipient** | [**RecipientDetailsRequest**](RecipientDetailsRequest.md) |  |  |
| **sender** | [**SenderDetailsRequest**](SenderDetailsRequest.md) |  | [optional] |
| **billing** | [**BillingDetailsRequest**](BillingDetailsRequest.md) |  | [optional] |
| **packages** | [**Array&lt;ShipmentPackageRequest&gt;**](ShipmentPackageRequest.md) |  | [optional] |
| **order_date** | **Time** |  |  |
| **planned_despatch_date** | **Time** |  | [optional] |
| **special_instructions** | **String** |  | [optional] |
| **subtotal** | **Float** |  |  |
| **shipping_cost_charged** | **Float** |  |  |
| **other_costs** | **Float** |  | [optional] |
| **customs_duty_costs** | **Float** | Customs Duty Costs is only supported in DDP (Delivery Duty Paid) services | [optional] |
| **total** | **Float** |  |  |
| **currency_code** | **String** |  | [optional] |
| **postage_details** | [**PostageDetailsRequest**](PostageDetailsRequest.md) |  | [optional] |
| **tags** | [**Array&lt;TagRequest&gt;**](TagRequest.md) |  | [optional] |
| **label** | [**LabelGenerationRequest**](LabelGenerationRequest.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::CreateOrderRequest.new(
  order_reference: null,
  recipient: null,
  sender: null,
  billing: null,
  packages: null,
  order_date: null,
  planned_despatch_date: null,
  special_instructions: null,
  subtotal: null,
  shipping_cost_charged: null,
  other_costs: null,
  customs_duty_costs: null,
  total: null,
  currency_code: null,
  postage_details: null,
  tags: null,
  label: null
)
```

