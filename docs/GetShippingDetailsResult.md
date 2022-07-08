# ClickAndDrop::GetShippingDetailsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipping_cost** | **Float** |  |  |
| **tracking_number** | **String** |  | [optional] |
| **shipping_tracking_status** | **String** |  | [optional] |
| **service_code** | **String** |  | [optional] |
| **delivery_service** | **String** |  | [optional] |
| **receive_email_notification** | **Boolean** |  | [optional] |
| **receive_sms_notification** | **Boolean** |  | [optional] |
| **guaranteed_saturday_delivery** | **Boolean** |  | [optional] |
| **request_signature_upon_delivery** | **Boolean** |  | [optional] |
| **is_local_collect** | **Boolean** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::GetShippingDetailsResult.new(
  shipping_cost: null,
  tracking_number: null,
  shipping_tracking_status: null,
  service_code: null,
  delivery_service: null,
  receive_email_notification: null,
  receive_sms_notification: null,
  guaranteed_saturday_delivery: null,
  request_signature_upon_delivery: null,
  is_local_collect: null
)
```

