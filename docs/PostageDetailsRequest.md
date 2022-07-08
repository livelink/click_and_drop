# ClickAndDrop::PostageDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_notifications_to** | **String** |  | [optional] |
| **service_code** | **String** |  | [optional] |
| **service_register_code** | **String** |  | [optional] |
| **consequential_loss** | **Integer** |  | [optional] |
| **receive_email_notification** | **Boolean** |  | [optional] |
| **receive_sms_notification** | **Boolean** |  | [optional] |
| **guaranteed_saturday_delivery** | **Boolean** |  | [optional] |
| **request_signature_upon_delivery** | **Boolean** |  | [optional] |
| **is_local_collect** | **Boolean** |  | [optional] |
| **safe_place** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **air_number** | **String** |  | [optional] |
| **ioss_number** | **String** |  | [optional] |
| **requires_export_license** | **Boolean** |  | [optional] |
| **commercial_invoice_number** | **String** |  | [optional] |
| **commercial_invoice_date** | **Time** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::PostageDetailsRequest.new(
  send_notifications_to: null,
  service_code: null,
  service_register_code: null,
  consequential_loss: null,
  receive_email_notification: null,
  receive_sms_notification: null,
  guaranteed_saturday_delivery: null,
  request_signature_upon_delivery: null,
  is_local_collect: null,
  safe_place: null,
  department: null,
  air_number: null,
  ioss_number: null,
  requires_export_license: null,
  commercial_invoice_number: null,
  commercial_invoice_date: null
)
```

