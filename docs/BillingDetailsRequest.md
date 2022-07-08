# ClickAndDrop::BillingDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**AddressRequest**](AddressRequest.md) |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::BillingDetailsRequest.new(
  address: null,
  phone_number: null,
  email_address: null
)
```

